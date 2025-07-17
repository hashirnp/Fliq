import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure({required String msg}) =
      _ClientMainFailure;
  const factory MainFailure.serverFailure({required String msg}) =
      _ServerMainFailure;
}
