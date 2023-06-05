// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tibetswap_api_v2.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyCreateOfferEndpointOfferPairIdPost
    _$BodyCreateOfferEndpointOfferPairIdPostFromJson(
            Map<String, dynamic> json) =>
        BodyCreateOfferEndpointOfferPairIdPost(
          offer: json['offer'] as String? ?? '',
          action: actionTypeFromJson(json['action']),
          totalDonationAmount: json['total_donation_amount'] as double?,
          donationAddresses: (json['donation_addresses'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
          donationWeights: (json['donation_weights'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$BodyCreateOfferEndpointOfferPairIdPostToJson(
    BodyCreateOfferEndpointOfferPairIdPost instance) {
  final val = <String, dynamic>{
    'offer': instance.offer,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', actionTypeToJson(instance.action));
  writeNotNull('total_donation_amount', instance.totalDonationAmount);
  writeNotNull('donation_addresses', instance.donationAddresses);
  writeNotNull('donation_weights', instance.donationWeights);
  return val;
}

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) =>
    HTTPValidationError(
      detail: (json['detail'] as List<dynamic>?)
              ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HTTPValidationErrorToJson(HTTPValidationError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

OfferResponse _$OfferResponseFromJson(Map<String, dynamic> json) =>
    OfferResponse(
      success: json['success'] as bool,
      message: json['message'] as String? ?? '',
      offerId: json['offer_id'] as String? ?? '',
    );

Map<String, dynamic> _$OfferResponseToJson(OfferResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'offer_id': instance.offerId,
    };

Pair _$PairFromJson(Map<String, dynamic> json) => Pair(
      launcherId: json['launcher_id'] as String? ?? '',
      assetId: json['asset_id'] as String? ?? '',
      liquidityAssetId: json['liquidity_asset_id'] as String? ?? '',
      xchReserve: json['xch_reserve'] as int,
      tokenReserve: json['token_reserve'] as int,
      liquidity: json['liquidity'] as int,
      lastCoinIdOnChain: json['last_coin_id_on_chain'] as String? ?? '',
    );

Map<String, dynamic> _$PairToJson(Pair instance) => <String, dynamic>{
      'launcher_id': instance.launcherId,
      'asset_id': instance.assetId,
      'liquidity_asset_id': instance.liquidityAssetId,
      'xch_reserve': instance.xchReserve,
      'token_reserve': instance.tokenReserve,
      'liquidity': instance.liquidity,
      'last_coin_id_on_chain': instance.lastCoinIdOnChain,
    };

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      amountIn: json['amount_in'] as int,
      amountOut: json['amount_out'] as int,
      priceWarning: json['price_warning'] as bool,
      priceImpact: (json['price_impact'] as num).toDouble(),
      fee: json['fee'] as int?,
      assetId: json['asset_id'] as String? ?? '',
      inputReserve: json['input_reserve'] as int,
      outputReserve: json['output_reserve'] as int,
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) {
  final val = <String, dynamic>{
    'amount_in': instance.amountIn,
    'amount_out': instance.amountOut,
    'price_warning': instance.priceWarning,
    'price_impact': instance.priceImpact,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fee', instance.fee);
  val['asset_id'] = instance.assetId;
  val['input_reserve'] = instance.inputReserve;
  val['output_reserve'] = instance.outputReserve;
  return val;
}

Router _$RouterFromJson(Map<String, dynamic> json) => Router(
      launcherId: json['launcher_id'] as String? ?? '',
      currentId: json['current_id'] as String? ?? '',
      network: json['network'] as String? ?? '',
    );

Map<String, dynamic> _$RouterToJson(Router instance) => <String, dynamic>{
      'launcher_id': instance.launcherId,
      'current_id': instance.currentId,
      'network': instance.network,
    };

Token _$TokenFromJson(Map<String, dynamic> json) => Token(
      assetId: json['asset_id'] as String? ?? '',
      pairId: json['pair_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      shortName: json['short_name'] as String? ?? '',
      imageUrl: json['image_url'] as String? ?? '',
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$TokenToJson(Token instance) {
  final val = <String, dynamic>{
    'asset_id': instance.assetId,
    'pair_id': instance.pairId,
    'name': instance.name,
    'short_name': instance.shortName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image_url', instance.imageUrl);
  val['verified'] = instance.verified;
  return val;
}

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) =>
    ValidationError(
      loc: (json['loc'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
          [],
      msg: json['msg'] as String? ?? '',
      type$: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$ValidationErrorToJson(ValidationError instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type$,
    };
