// ignore_for_file: constant_identifier_names

import '../tibetswap_service.dart';

const TIBET_SWAP_ADDRESS =
    'xch1hm6sk2ktgx3u527kp803ex2lten3xzl2tpjvrnc0affvx5upd6mq75af8y';

class TibeSwapService {
  final String walletDevAddress;
  final String tibetSwapAddress;
  final String baseUrl;
  final int tibetDevWeigth;
  final int walletDevWeigth;
  late final TibetswapApiV2 _tibetSwapApiV2;

  TibeSwapService({
    required this.walletDevAddress,
    required this.tibetSwapAddress,
    required this.baseUrl,
    required this.tibetDevWeigth,
    required this.walletDevWeigth,
  }) {
    _tibetSwapApiV2 = TibetswapApiV2.create(
      baseUrl: Uri.parse(baseUrl),
    );
  }

  Future<Pair?> getPairByLauncherId(String launcherId) async {
    final result =
        await _tibetSwapApiV2.pairLauncherIdGet(launcherId: launcherId);
    return result.body;
  }

  Future getQuoteForPair(
    String launcherId, {
    required int amountIn,
    int? amountOut,
    required bool xchIsInput,
    required bool estimateFee,
  }) async {
    final result = await _tibetSwapApiV2.quotePairIdGet(
      pairId: launcherId,
      amountIn: amountIn,
      amountOut: amountOut,
      estimateFee: estimateFee,
      xchIsInput: xchIsInput,
    );
    return result.body;
  }

  Future<OfferResponse?> createOfferForPair(
    String launcherId,
    String offer,
    ActionType action,
    double devAmount,
  ) async {
    // TibetSwap's API rejects the offer (400 "please provide at least 50%
    // of fees to our address") unless its address gets >= 50% of the
    // donation weights. The configurable weights came from the retired
    // ozone_api server, so they are no longer honored — fixed 50/50 split.
    var body = BodyCreateOfferEndpointOfferPairIdPost(
      offer: offer,
      action: action,
      donationAddresses: devAmount > 0
          ? [tibetSwapAddress, walletDevAddress]
          : [],
      donationWeights: devAmount > 0 ? [1, 1] : [],
      totalDonationAmount: devAmount.toInt().toDouble(),
    );

    final result = await _tibetSwapApiV2.offerPairIdPost(
      pairId: launcherId,
      body: body,
    );
    if (result.body == null) {
      // Surface the API's actual rejection — a null body alone is
      // undiagnosable (chopper leaves non-2xx payloads in `error`).
      // ignore: avoid_print
      print('[TIBET] offer POST ${result.base.statusCode} '
          'error=${result.error} url=${result.base.request?.url}');
    }
    return result.body;
  }

  Future<List<Token>> getAllTokens() async {
    final result = await _tibetSwapApiV2.tokensGet();
    return result.body ?? [];
  }

  Future<List<Pair>> getAllPairs() async {
    final result = await _tibetSwapApiV2.pairsGet(limit: 1000);
    return result.body ?? [];
  }

  int getInputPrice(int inputAmount, int inputReserve, int outputReserve) {
    if (inputAmount == 0) return 0;

    BigInt inputAmountWithFee = BigInt.from(inputAmount) * BigInt.from(993);
    BigInt numerator = inputAmountWithFee * BigInt.from(outputReserve);
    BigInt denominator =
        (BigInt.from(inputReserve) * BigInt.from(1000)) + inputAmountWithFee;
    return (numerator ~/ denominator).toInt();
  }

  int getOutputPrice(int outputAmount, int inputReserve, int outputReserve) {
    if (outputAmount > outputReserve) {
      return 0;
    }
    if (outputAmount == 0) {
      return 0;
    }

    BigInt numerator = BigInt.from(inputReserve) *
        BigInt.from(outputAmount) *
        BigInt.from(1000);
    BigInt denominator =
        (BigInt.from(outputReserve) - BigInt.from(outputAmount)) *
            BigInt.from(993);
    return (numerator ~/ denominator).toInt() + 1;
  }
}
