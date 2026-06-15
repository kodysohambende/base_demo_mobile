// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_demo/framework/dependecy_injection/dio_api_client.dart'
    as _i364;
import 'package:base_demo/framework/provider/network/dio_client.dart' as _i424;
import 'package:base_demo/ui/routing/delegate.dart' as _i888;
import 'package:base_demo/ui/routing/navigation_stack_item.dart' as _i249;
import 'package:base_demo/ui/routing/parser.dart' as _i802;
import 'package:base_demo/ui/routing/stack.dart' as _i503;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i729;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioApiClient = _$DioApiClient();
    gh.lazySingleton<_i424.DioClient>(
      () => dioApiClient.getDevelopmentDioClient(),
    );
    gh.factoryParam<_i888.MainRouterDelegate, _i503.NavigationStack, dynamic>(
      (stack, _) => _i888.MainRouterDelegate(stack),
    );
    gh.factoryParam<
      _i802.MainRouterInformationParser,
      _i729.WidgetRef,
      _i409.BuildContext
    >((ref, context) => _i802.MainRouterInformationParser(ref, context));
    gh.factoryParam<
      _i503.NavigationStack,
      List<_i249.NavigationStackItem>,
      dynamic
    >((items, _) => _i503.NavigationStack(items));
    return this;
  }
}

class _$DioApiClient extends _i364.DioApiClient {}
