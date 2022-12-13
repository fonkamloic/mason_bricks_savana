import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
abstract class EntityDto with _$EntityDto {
  const factory Entity({
    @required String id,
  }) = _EntityDto;

  
}
