// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'tibetswap_api_v2.enums.swagger.dart' as enums;
export 'tibetswap_api_v2.enums.swagger.dart';

part 'tibetswap_api_v2.swagger.chopper.dart';
part 'tibetswap_api_v2.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class TibetswapApiV2 extends ChopperService {
  static TibetswapApiV2 create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$TibetswapApiV2(client);
    }

    final newClient = ChopperClient(
        services: [_$TibetswapApiV2()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$TibetswapApiV2(newClient);
  }

  ///Get Tokens
  Future<chopper.Response<List<Token>>> tokensGet({String? cacheControl}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _tokensGet(cacheControl: cacheControl);
  }

  ///Get Tokens
  @Get(path: '/tokens')
  Future<chopper.Response<List<Token>>> _tokensGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Read Pairs
  ///@param skip
  ///@param limit
  Future<chopper.Response<List<Pair>>> pairsGet({
    int? skip,
    int? limit,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pair, () => Pair.fromJsonFactory);

    return _pairsGet(skip: skip, limit: limit, cacheControl: cacheControl);
  }

  ///Read Pairs
  ///@param skip
  ///@param limit
  @Get(path: '/pairs')
  Future<chopper.Response<List<Pair>>> _pairsGet({
    @Query('skip') int? skip,
    @Query('limit') int? limit,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Get Token
  ///@param asset_id
  Future<chopper.Response<Token>> tokenAssetIdGet({
    required String? assetId,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _tokenAssetIdGet(assetId: assetId, cacheControl: cacheControl);
  }

  ///Get Token
  ///@param asset_id
  @Get(path: '/token/{asset_id}')
  Future<chopper.Response<Token>> _tokenAssetIdGet({
    @Path('asset_id') required String? assetId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Read Pair
  ///@param launcher_id
  Future<chopper.Response<Pair>> pairLauncherIdGet({
    required String? launcherId,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Pair, () => Pair.fromJsonFactory);

    return _pairLauncherIdGet(
        launcherId: launcherId, cacheControl: cacheControl);
  }

  ///Read Pair
  ///@param launcher_id
  @Get(path: '/pair/{launcher_id}')
  Future<chopper.Response<Pair>> _pairLauncherIdGet({
    @Path('launcher_id') required String? launcherId,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Get Router
  Future<chopper.Response<Router>> routerGet({String? cacheControl}) {
    generatedMapping.putIfAbsent(Router, () => Router.fromJsonFactory);

    return _routerGet(cacheControl: cacheControl);
  }

  ///Get Router
  @Get(path: '/router')
  Future<chopper.Response<Router>> _routerGet(
      {@Header('Cache-Control') String? cacheControl});

  ///Read Quote
  ///@param pair_id
  ///@param amount_in
  ///@param amount_out
  ///@param xch_is_input
  ///@param estimate_fee
  Future<chopper.Response<Quote>> quotePairIdGet({
    required String? pairId,
    int? amountIn,
    int? amountOut,
    bool? xchIsInput,
    bool? estimateFee,
    String? cacheControl,
  }) {
    generatedMapping.putIfAbsent(Quote, () => Quote.fromJsonFactory);

    return _quotePairIdGet(
        pairId: pairId,
        amountIn: amountIn,
        amountOut: amountOut,
        xchIsInput: xchIsInput,
        estimateFee: estimateFee,
        cacheControl: cacheControl);
  }

  ///Read Quote
  ///@param pair_id
  ///@param amount_in
  ///@param amount_out
  ///@param xch_is_input
  ///@param estimate_fee
  @Get(path: '/quote/{pair_id}')
  Future<chopper.Response<Quote>> _quotePairIdGet({
    @Path('pair_id') required String? pairId,
    @Query('amount_in') int? amountIn,
    @Query('amount_out') int? amountOut,
    @Query('xch_is_input') bool? xchIsInput,
    @Query('estimate_fee') bool? estimateFee,
    @Header('Cache-Control') String? cacheControl,
  });

  ///Create Offer Endpoint
  ///@param pair_id
  Future<chopper.Response<OfferResponse>> offerPairIdPost({
    required String? pairId,
    String? cacheControl,
    required BodyCreateOfferEndpointOfferPairIdPost? body,
  }) {
    generatedMapping.putIfAbsent(
        OfferResponse, () => OfferResponse.fromJsonFactory);

    return _offerPairIdPost(
        pairId: pairId, cacheControl: cacheControl, body: body);
  }

  ///Create Offer Endpoint
  ///@param pair_id
  @Post(
    path: '/offer/{pair_id}',
    optionalBody: true,
  )
  Future<chopper.Response<OfferResponse>> _offerPairIdPost({
    @Path('pair_id') required String? pairId,
    @Header('Cache-Control') String? cacheControl,
    @Body() required BodyCreateOfferEndpointOfferPairIdPost? body,
  });

  ///Root
  Future<chopper.Response> get({String? cacheControl}) {
    return _get(cacheControl: cacheControl);
  }

  ///Root
  @Get(path: '/')
  Future<chopper.Response> _get(
      {@Header('Cache-Control') String? cacheControl});
}

@JsonSerializable(explicitToJson: true)
class BodyCreateOfferEndpointOfferPairIdPost {
  BodyCreateOfferEndpointOfferPairIdPost({
    required this.offer,
    required this.action,
    this.totalDonationAmount,
    this.donationAddresses,
    this.donationWeights,
  });

  factory BodyCreateOfferEndpointOfferPairIdPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyCreateOfferEndpointOfferPairIdPostFromJson(json);

  static const toJsonFactory = _$BodyCreateOfferEndpointOfferPairIdPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyCreateOfferEndpointOfferPairIdPostToJson(this);

  @JsonKey(name: 'offer', includeIfNull: false, defaultValue: '')
  final String offer;
  @JsonKey(
    name: 'action',
    includeIfNull: false,
    toJson: actionTypeToJson,
    fromJson: actionTypeFromJson,
  )
  final enums.ActionType action;
  @JsonKey(name: 'total_donation_amount', includeIfNull: false)
  final double? totalDonationAmount;
  @JsonKey(
      name: 'donation_addresses',
      includeIfNull: false,
      defaultValue: <String>[])
  final List<String>? donationAddresses;
  @JsonKey(
      name: 'donation_weights', includeIfNull: false, defaultValue: <int>[])
  final List<int>? donationWeights;
  static const fromJsonFactory =
      _$BodyCreateOfferEndpointOfferPairIdPostFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyCreateOfferEndpointOfferPairIdPost &&
            (identical(other.offer, offer) ||
                const DeepCollectionEquality().equals(other.offer, offer)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.totalDonationAmount, totalDonationAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalDonationAmount, totalDonationAmount)) &&
            (identical(other.donationAddresses, donationAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.donationAddresses, donationAddresses)) &&
            (identical(other.donationWeights, donationWeights) ||
                const DeepCollectionEquality()
                    .equals(other.donationWeights, donationWeights)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(offer) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(totalDonationAmount) ^
      const DeepCollectionEquality().hash(donationAddresses) ^
      const DeepCollectionEquality().hash(donationWeights) ^
      runtimeType.hashCode;
}

extension $BodyCreateOfferEndpointOfferPairIdPostExtension
    on BodyCreateOfferEndpointOfferPairIdPost {
  BodyCreateOfferEndpointOfferPairIdPost copyWith(
      {String? offer,
      enums.ActionType? action,
      double? totalDonationAmount,
      List<String>? donationAddresses,
      List<int>? donationWeights}) {
    return BodyCreateOfferEndpointOfferPairIdPost(
        offer: offer ?? this.offer,
        action: action ?? this.action,
        totalDonationAmount: totalDonationAmount ?? this.totalDonationAmount,
        donationAddresses: donationAddresses ?? this.donationAddresses,
        donationWeights: donationWeights ?? this.donationWeights);
  }

  BodyCreateOfferEndpointOfferPairIdPost copyWithWrapped(
      {Wrapped<String>? offer,
      Wrapped<enums.ActionType>? action,
      Wrapped<double?>? totalDonationAmount,
      Wrapped<List<String>?>? donationAddresses,
      Wrapped<List<int>?>? donationWeights}) {
    return BodyCreateOfferEndpointOfferPairIdPost(
        offer: (offer != null ? offer.value : this.offer),
        action: (action != null ? action.value : this.action),
        totalDonationAmount: (totalDonationAmount != null
            ? totalDonationAmount.value
            : this.totalDonationAmount),
        donationAddresses: (donationAddresses != null
            ? donationAddresses.value
            : this.donationAddresses),
        donationWeights: (donationWeights != null
            ? donationWeights.value
            : this.donationWeights));
  }
}

@JsonSerializable(explicitToJson: true)
class HTTPValidationError {
  HTTPValidationError({
    this.detail,
  });

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  static const toJsonFactory = _$HTTPValidationErrorToJson;
  Map<String, dynamic> toJson() => _$HTTPValidationErrorToJson(this);

  @JsonKey(
      name: 'detail', includeIfNull: false, defaultValue: <ValidationError>[])
  final List<ValidationError>? detail;
  static const fromJsonFactory = _$HTTPValidationErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HTTPValidationError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $HTTPValidationErrorExtension on HTTPValidationError {
  HTTPValidationError copyWith({List<ValidationError>? detail}) {
    return HTTPValidationError(detail: detail ?? this.detail);
  }

  HTTPValidationError copyWithWrapped(
      {Wrapped<List<ValidationError>?>? detail}) {
    return HTTPValidationError(
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class OfferResponse {
  OfferResponse({
    required this.success,
    required this.message,
    required this.offerId,
  });

  factory OfferResponse.fromJson(Map<String, dynamic> json) =>
      _$OfferResponseFromJson(json);

  static const toJsonFactory = _$OfferResponseToJson;
  Map<String, dynamic> toJson() => _$OfferResponseToJson(this);

  @JsonKey(name: 'success', includeIfNull: false)
  final bool success;
  @JsonKey(name: 'message', includeIfNull: false, defaultValue: '')
  final String message;
  @JsonKey(name: 'offer_id', includeIfNull: false, defaultValue: '')
  final String offerId;
  static const fromJsonFactory = _$OfferResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OfferResponse &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.offerId, offerId) ||
                const DeepCollectionEquality().equals(other.offerId, offerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(offerId) ^
      runtimeType.hashCode;
}

extension $OfferResponseExtension on OfferResponse {
  OfferResponse copyWith({bool? success, String? message, String? offerId}) {
    return OfferResponse(
        success: success ?? this.success,
        message: message ?? this.message,
        offerId: offerId ?? this.offerId);
  }

  OfferResponse copyWithWrapped(
      {Wrapped<bool>? success,
      Wrapped<String>? message,
      Wrapped<String>? offerId}) {
    return OfferResponse(
        success: (success != null ? success.value : this.success),
        message: (message != null ? message.value : this.message),
        offerId: (offerId != null ? offerId.value : this.offerId));
  }
}

@JsonSerializable(explicitToJson: true)
class Pair {
  Pair({
    required this.launcherId,
    required this.assetId,
    required this.liquidityAssetId,
    required this.xchReserve,
    required this.tokenReserve,
    required this.liquidity,
    required this.lastCoinIdOnChain,
  });

  factory Pair.fromJson(Map<String, dynamic> json) => _$PairFromJson(json);

  static const toJsonFactory = _$PairToJson;
  Map<String, dynamic> toJson() => _$PairToJson(this);

  @JsonKey(name: 'launcher_id', includeIfNull: false, defaultValue: '')
  final String launcherId;
  @JsonKey(name: 'asset_id', includeIfNull: false, defaultValue: '')
  final String assetId;
  @JsonKey(name: 'liquidity_asset_id', includeIfNull: false, defaultValue: '')
  final String liquidityAssetId;
  @JsonKey(name: 'xch_reserve', includeIfNull: false)
  final int xchReserve;
  @JsonKey(name: 'token_reserve', includeIfNull: false)
  final int tokenReserve;
  @JsonKey(name: 'liquidity', includeIfNull: false)
  final int liquidity;
  @JsonKey(
      name: 'last_coin_id_on_chain', includeIfNull: false, defaultValue: '')
  final String lastCoinIdOnChain;
  static const fromJsonFactory = _$PairFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Pair &&
            (identical(other.launcherId, launcherId) ||
                const DeepCollectionEquality()
                    .equals(other.launcherId, launcherId)) &&
            (identical(other.assetId, assetId) ||
                const DeepCollectionEquality()
                    .equals(other.assetId, assetId)) &&
            (identical(other.liquidityAssetId, liquidityAssetId) ||
                const DeepCollectionEquality()
                    .equals(other.liquidityAssetId, liquidityAssetId)) &&
            (identical(other.xchReserve, xchReserve) ||
                const DeepCollectionEquality()
                    .equals(other.xchReserve, xchReserve)) &&
            (identical(other.tokenReserve, tokenReserve) ||
                const DeepCollectionEquality()
                    .equals(other.tokenReserve, tokenReserve)) &&
            (identical(other.liquidity, liquidity) ||
                const DeepCollectionEquality()
                    .equals(other.liquidity, liquidity)) &&
            (identical(other.lastCoinIdOnChain, lastCoinIdOnChain) ||
                const DeepCollectionEquality()
                    .equals(other.lastCoinIdOnChain, lastCoinIdOnChain)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(launcherId) ^
      const DeepCollectionEquality().hash(assetId) ^
      const DeepCollectionEquality().hash(liquidityAssetId) ^
      const DeepCollectionEquality().hash(xchReserve) ^
      const DeepCollectionEquality().hash(tokenReserve) ^
      const DeepCollectionEquality().hash(liquidity) ^
      const DeepCollectionEquality().hash(lastCoinIdOnChain) ^
      runtimeType.hashCode;
}

extension $PairExtension on Pair {
  Pair copyWith(
      {String? launcherId,
      String? assetId,
      String? liquidityAssetId,
      int? xchReserve,
      int? tokenReserve,
      int? liquidity,
      String? lastCoinIdOnChain}) {
    return Pair(
        launcherId: launcherId ?? this.launcherId,
        assetId: assetId ?? this.assetId,
        liquidityAssetId: liquidityAssetId ?? this.liquidityAssetId,
        xchReserve: xchReserve ?? this.xchReserve,
        tokenReserve: tokenReserve ?? this.tokenReserve,
        liquidity: liquidity ?? this.liquidity,
        lastCoinIdOnChain: lastCoinIdOnChain ?? this.lastCoinIdOnChain);
  }

  Pair copyWithWrapped(
      {Wrapped<String>? launcherId,
      Wrapped<String>? assetId,
      Wrapped<String>? liquidityAssetId,
      Wrapped<int>? xchReserve,
      Wrapped<int>? tokenReserve,
      Wrapped<int>? liquidity,
      Wrapped<String>? lastCoinIdOnChain}) {
    return Pair(
        launcherId: (launcherId != null ? launcherId.value : this.launcherId),
        assetId: (assetId != null ? assetId.value : this.assetId),
        liquidityAssetId: (liquidityAssetId != null
            ? liquidityAssetId.value
            : this.liquidityAssetId),
        xchReserve: (xchReserve != null ? xchReserve.value : this.xchReserve),
        tokenReserve:
            (tokenReserve != null ? tokenReserve.value : this.tokenReserve),
        liquidity: (liquidity != null ? liquidity.value : this.liquidity),
        lastCoinIdOnChain: (lastCoinIdOnChain != null
            ? lastCoinIdOnChain.value
            : this.lastCoinIdOnChain));
  }
}

@JsonSerializable(explicitToJson: true)
class Quote {
  Quote({
    required this.amountIn,
    required this.amountOut,
    required this.priceWarning,
    required this.priceImpact,
    this.fee,
    required this.assetId,
    required this.inputReserve,
    required this.outputReserve,
  });

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  static const toJsonFactory = _$QuoteToJson;
  Map<String, dynamic> toJson() => _$QuoteToJson(this);

  @JsonKey(name: 'amount_in', includeIfNull: false)
  final int amountIn;
  @JsonKey(name: 'amount_out', includeIfNull: false)
  final int amountOut;
  @JsonKey(name: 'price_warning', includeIfNull: false)
  final bool priceWarning;
  @JsonKey(name: 'price_impact', includeIfNull: false)
  final double priceImpact;
  @JsonKey(name: 'fee', includeIfNull: false)
  final int? fee;
  @JsonKey(name: 'asset_id', includeIfNull: false, defaultValue: '')
  final String assetId;
  @JsonKey(name: 'input_reserve', includeIfNull: false)
  final int inputReserve;
  @JsonKey(name: 'output_reserve', includeIfNull: false)
  final int outputReserve;
  static const fromJsonFactory = _$QuoteFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Quote &&
            (identical(other.amountIn, amountIn) ||
                const DeepCollectionEquality()
                    .equals(other.amountIn, amountIn)) &&
            (identical(other.amountOut, amountOut) ||
                const DeepCollectionEquality()
                    .equals(other.amountOut, amountOut)) &&
            (identical(other.priceWarning, priceWarning) ||
                const DeepCollectionEquality()
                    .equals(other.priceWarning, priceWarning)) &&
            (identical(other.priceImpact, priceImpact) ||
                const DeepCollectionEquality()
                    .equals(other.priceImpact, priceImpact)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.assetId, assetId) ||
                const DeepCollectionEquality()
                    .equals(other.assetId, assetId)) &&
            (identical(other.inputReserve, inputReserve) ||
                const DeepCollectionEquality()
                    .equals(other.inputReserve, inputReserve)) &&
            (identical(other.outputReserve, outputReserve) ||
                const DeepCollectionEquality()
                    .equals(other.outputReserve, outputReserve)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amountIn) ^
      const DeepCollectionEquality().hash(amountOut) ^
      const DeepCollectionEquality().hash(priceWarning) ^
      const DeepCollectionEquality().hash(priceImpact) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(assetId) ^
      const DeepCollectionEquality().hash(inputReserve) ^
      const DeepCollectionEquality().hash(outputReserve) ^
      runtimeType.hashCode;
}

extension $QuoteExtension on Quote {
  Quote copyWith(
      {int? amountIn,
      int? amountOut,
      bool? priceWarning,
      double? priceImpact,
      int? fee,
      String? assetId,
      int? inputReserve,
      int? outputReserve}) {
    return Quote(
        amountIn: amountIn ?? this.amountIn,
        amountOut: amountOut ?? this.amountOut,
        priceWarning: priceWarning ?? this.priceWarning,
        priceImpact: priceImpact ?? this.priceImpact,
        fee: fee ?? this.fee,
        assetId: assetId ?? this.assetId,
        inputReserve: inputReserve ?? this.inputReserve,
        outputReserve: outputReserve ?? this.outputReserve);
  }

  Quote copyWithWrapped(
      {Wrapped<int>? amountIn,
      Wrapped<int>? amountOut,
      Wrapped<bool>? priceWarning,
      Wrapped<double>? priceImpact,
      Wrapped<int?>? fee,
      Wrapped<String>? assetId,
      Wrapped<int>? inputReserve,
      Wrapped<int>? outputReserve}) {
    return Quote(
        amountIn: (amountIn != null ? amountIn.value : this.amountIn),
        amountOut: (amountOut != null ? amountOut.value : this.amountOut),
        priceWarning:
            (priceWarning != null ? priceWarning.value : this.priceWarning),
        priceImpact:
            (priceImpact != null ? priceImpact.value : this.priceImpact),
        fee: (fee != null ? fee.value : this.fee),
        assetId: (assetId != null ? assetId.value : this.assetId),
        inputReserve:
            (inputReserve != null ? inputReserve.value : this.inputReserve),
        outputReserve:
            (outputReserve != null ? outputReserve.value : this.outputReserve));
  }
}

@JsonSerializable(explicitToJson: true)
class Router {
  Router({
    required this.launcherId,
    required this.currentId,
    required this.network,
  });

  factory Router.fromJson(Map<String, dynamic> json) => _$RouterFromJson(json);

  static const toJsonFactory = _$RouterToJson;
  Map<String, dynamic> toJson() => _$RouterToJson(this);

  @JsonKey(name: 'launcher_id', includeIfNull: false, defaultValue: '')
  final String launcherId;
  @JsonKey(name: 'current_id', includeIfNull: false, defaultValue: '')
  final String currentId;
  @JsonKey(name: 'network', includeIfNull: false, defaultValue: '')
  final String network;
  static const fromJsonFactory = _$RouterFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Router &&
            (identical(other.launcherId, launcherId) ||
                const DeepCollectionEquality()
                    .equals(other.launcherId, launcherId)) &&
            (identical(other.currentId, currentId) ||
                const DeepCollectionEquality()
                    .equals(other.currentId, currentId)) &&
            (identical(other.network, network) ||
                const DeepCollectionEquality().equals(other.network, network)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(launcherId) ^
      const DeepCollectionEquality().hash(currentId) ^
      const DeepCollectionEquality().hash(network) ^
      runtimeType.hashCode;
}

extension $RouterExtension on Router {
  Router copyWith({String? launcherId, String? currentId, String? network}) {
    return Router(
        launcherId: launcherId ?? this.launcherId,
        currentId: currentId ?? this.currentId,
        network: network ?? this.network);
  }

  Router copyWithWrapped(
      {Wrapped<String>? launcherId,
      Wrapped<String>? currentId,
      Wrapped<String>? network}) {
    return Router(
        launcherId: (launcherId != null ? launcherId.value : this.launcherId),
        currentId: (currentId != null ? currentId.value : this.currentId),
        network: (network != null ? network.value : this.network));
  }
}

@JsonSerializable(explicitToJson: true)
class Token {
  Token({
    required this.assetId,
    required this.pairId,
    required this.name,
    required this.shortName,
    this.imageUrl,
    required this.verified,
  });

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  static const toJsonFactory = _$TokenToJson;
  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @JsonKey(name: 'asset_id', includeIfNull: false, defaultValue: '')
  final String assetId;
  @JsonKey(name: 'pair_id', includeIfNull: false, defaultValue: '')
  final String pairId;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'short_name', includeIfNull: false, defaultValue: '')
  final String shortName;
  @JsonKey(name: 'image_url', includeIfNull: false, defaultValue: '')
  final String? imageUrl;
  @JsonKey(name: 'verified', includeIfNull: false)
  final bool verified;
  static const fromJsonFactory = _$TokenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Token &&
            (identical(other.assetId, assetId) ||
                const DeepCollectionEquality()
                    .equals(other.assetId, assetId)) &&
            (identical(other.pairId, pairId) ||
                const DeepCollectionEquality().equals(other.pairId, pairId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shortName, shortName) ||
                const DeepCollectionEquality()
                    .equals(other.shortName, shortName)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(assetId) ^
      const DeepCollectionEquality().hash(pairId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shortName) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(verified) ^
      runtimeType.hashCode;
}

extension $TokenExtension on Token {
  Token copyWith(
      {String? assetId,
      String? pairId,
      String? name,
      String? shortName,
      String? imageUrl,
      bool? verified}) {
    return Token(
        assetId: assetId ?? this.assetId,
        pairId: pairId ?? this.pairId,
        name: name ?? this.name,
        shortName: shortName ?? this.shortName,
        imageUrl: imageUrl ?? this.imageUrl,
        verified: verified ?? this.verified);
  }

  Token copyWithWrapped(
      {Wrapped<String>? assetId,
      Wrapped<String>? pairId,
      Wrapped<String>? name,
      Wrapped<String>? shortName,
      Wrapped<String?>? imageUrl,
      Wrapped<bool>? verified}) {
    return Token(
        assetId: (assetId != null ? assetId.value : this.assetId),
        pairId: (pairId != null ? pairId.value : this.pairId),
        name: (name != null ? name.value : this.name),
        shortName: (shortName != null ? shortName.value : this.shortName),
        imageUrl: (imageUrl != null ? imageUrl.value : this.imageUrl),
        verified: (verified != null ? verified.value : this.verified));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationError {
  ValidationError({
    required this.loc,
    required this.msg,
    required this.type$,
  });

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  static const toJsonFactory = _$ValidationErrorToJson;
  Map<String, dynamic> toJson() => _$ValidationErrorToJson(this);

  @JsonKey(name: 'loc', includeIfNull: false, defaultValue: <Object>[])
  final List<Object> loc;
  @JsonKey(name: 'msg', includeIfNull: false, defaultValue: '')
  final String msg;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String type$;
  static const fromJsonFactory = _$ValidationErrorFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.loc, loc) ||
                const DeepCollectionEquality().equals(other.loc, loc)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.type$, type$) ||
                const DeepCollectionEquality().equals(other.type$, type$)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(loc) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(type$) ^
      runtimeType.hashCode;
}

extension $ValidationErrorExtension on ValidationError {
  ValidationError copyWith({List<Object>? loc, String? msg, String? type$}) {
    return ValidationError(
        loc: loc ?? this.loc, msg: msg ?? this.msg, type$: type$ ?? this.type$);
  }

  ValidationError copyWithWrapped(
      {Wrapped<List<Object>>? loc,
      Wrapped<String>? msg,
      Wrapped<String>? type$}) {
    return ValidationError(
        loc: (loc != null ? loc.value : this.loc),
        msg: (msg != null ? msg.value : this.msg),
        type$: (type$ != null ? type$.value : this.type$));
  }
}

String? actionTypeToJson(enums.ActionType? actionType) {
  return actionType?.value;
}

enums.ActionType actionTypeFromJson(
  Object? actionType, [
  enums.ActionType? defaultValue,
]) {
  return enums.ActionType.values
          .firstWhereOrNull((e) => e.value == actionType) ??
      defaultValue ??
      enums.ActionType.swaggerGeneratedUnknown;
}

List<String> actionTypeListToJson(List<enums.ActionType>? actionType) {
  if (actionType == null) {
    return [];
  }

  return actionType.map((e) => e.value!).toList();
}

List<enums.ActionType> actionTypeListFromJson(
  List? actionType, [
  List<enums.ActionType>? defaultValue,
]) {
  if (actionType == null) {
    return defaultValue ?? [];
  }

  return actionType.map((e) => actionTypeFromJson(e.toString())).toList();
}

List<enums.ActionType>? actionTypeNullableListFromJson(
  List? actionType, [
  List<enums.ActionType>? defaultValue,
]) {
  if (actionType == null) {
    return defaultValue;
  }

  return actionType.map((e) => actionTypeFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
