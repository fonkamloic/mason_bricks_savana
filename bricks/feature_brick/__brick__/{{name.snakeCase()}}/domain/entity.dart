import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
abstract class Entity with _$Entity {
  const factory Entity({
    @required UniqueId id,
  }) = _Entity;
}
