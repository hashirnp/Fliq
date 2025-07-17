// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fliq/Application/Auth/auth_bloc.dart' as _i913;
import 'package:fliq/Application/Inbox/inbox_bloc.dart' as _i781;
import 'package:fliq/Repository/auth.dart' as _i263;
import 'package:fliq/Repository/inbox.dart' as _i411;
import 'package:fliq/Services/Auth/auth_service.dart' as _i522;
import 'package:fliq/Services/Inbox/inbox_service.dart' as _i550;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i550.InboxService>(() => _i411.Inboxepository());
    gh.lazySingleton<_i522.AuthService>(() => _i263.AuthRepository());
    gh.factory<_i781.InboxBloc>(
      () => _i781.InboxBloc(gh<_i550.InboxService>()),
    );
    gh.factory<_i913.AuthBloc>(() => _i913.AuthBloc(gh<_i522.AuthService>()));
    return this;
  }
}
