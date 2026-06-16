// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_demo_ob/framework/dependecy_injection/dio_api_client.dart'
    as _i503;
import 'package:base_demo_ob/framework/provider/network/dio_client.dart'
    as _i125;
import 'package:base_demo_ob/ui/routing/delegate.dart' as _i1068;
import 'package:base_demo_ob/ui/routing/navigation_stack_item.dart' as _i574;
import 'package:base_demo_ob/ui/routing/parser.dart' as _i611;
import 'package:base_demo_ob/ui/routing/stack.dart' as _i882;
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
    gh.lazySingleton<_i125.DioClient>(
      () => dioApiClient.getDevelopmentDioClient(),
    );
    gh.factoryParam<
      _i882.NavigationStack,
      List<_i574.NavigationStackItem>,
      dynamic
    >((items, _) => _i882.NavigationStack(items));
    gh.factoryParam<_i1068.MainRouterDelegate, _i882.NavigationStack, dynamic>(
      (stack, _) => _i1068.MainRouterDelegate(stack),
    );
    gh.factoryParam<
      _i611.MainRouterInformationParser,
      _i729.WidgetRef,
      _i409.BuildContext
    >((ref, context) => _i611.MainRouterInformationParser(ref, context));
    return this;
  }
}

class _$DioApiClient extends _i503.DioApiClient {}
