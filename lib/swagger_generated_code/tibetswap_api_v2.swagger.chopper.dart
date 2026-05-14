//Generated code

part of 'tibetswap_api_v2.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TibetswapApiV2 extends TibetswapApiV2 {
  _$TibetswapApiV2([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TibetswapApiV2;

  @override
  Future<Response<List<Token>>> _tokensGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/tokens');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<Token>, Token>($request);
  }

  @override
  Future<Response<List<Pair>>> _pairsGet({
    int? skip,
    int? limit,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/pairs');
    final Map<String, dynamic> $params = <String, dynamic>{
      'skip': skip,
      'limit': limit,
    };
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<List<Pair>, Pair>($request);
  }

  @override
  Future<Response<Token>> _tokenAssetIdGet({
    required String? assetId,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/token/${assetId}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<Pair>> _pairLauncherIdGet({
    required String? launcherId,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/pair/${launcherId}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Pair, Pair>($request);
  }

  @override
  Future<Response<Router>> _routerGet({String? cacheControl}) {
    final Uri $url = Uri.parse('/router');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Router, Router>($request);
  }

  @override
  Future<Response<Quote>> _quotePairIdGet({
    required String? pairId,
    int? amountIn,
    int? amountOut,
    bool? xchIsInput,
    bool? estimateFee,
    String? cacheControl,
  }) {
    final Uri $url = Uri.parse('/quote/${pairId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'amount_in': amountIn,
      'amount_out': amountOut,
      'xch_is_input': xchIsInput,
      'estimate_fee': estimateFee,
    };
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      headers: $headers,
    );
    return client.send<Quote, Quote>($request);
  }

  @override
  Future<Response<OfferResponse>> _offerPairIdPost({
    required String? pairId,
    String? cacheControl,
    required BodyCreateOfferEndpointOfferPairIdPost? body,
  }) {
    final Uri $url = Uri.parse('/offer/${pairId}');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<OfferResponse, OfferResponse>($request);
  }

  @override
  Future<Response<dynamic>> _get({String? cacheControl}) {
    final Uri $url = Uri.parse('/');
    final Map<String, String> $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
