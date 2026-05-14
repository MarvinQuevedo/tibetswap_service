import 'package:json_annotation/json_annotation.dart';

enum ActionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('SWAP')
  swap('SWAP'),
  @JsonValue('ADD_LIQUIDITY')
  addLiquidity('ADD_LIQUIDITY'),
  @JsonValue('REMOVE_LIQUIDITY')
  removeLiquidity('REMOVE_LIQUIDITY');

  final String? value;

  const ActionType(this.value);
}
