import 'package:flutter_todo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:flutter_todo/domain/auth/value_objects.dart';

part 'user_data.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required UniqueId id,
    required String displayName,
  }) = _UserData;
}
