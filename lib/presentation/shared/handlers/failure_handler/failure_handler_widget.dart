import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../../application/failures/data_convert_failure/data_convert_failure.dart';
import '../../../../application/failures/dio_failure/dio_failure.dart';
import '../../../../application/failures/generic/generic_failure.dart';
import '../../../../application/failures/persistent/persistent.dart';
import '../../../../utilities/failure/convert_code_failure.dart';
import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/logging/logging.dart';
import '../../../bases/childless_assertion/childless_assertion.dart';
import '../../../bases/navigation_context_resolver/src/navigation_context_resolved_mixin.dart';
import '../../../gen/locale/app_localizations.dart';
import '../../../router/router_config/router_config.dart';
import 'failure_handler_manager.dart';

class FailureHandlerWidget extends SingleChildStatelessWidget
    with NavigationContextResolverMixin, ChildlessAssertion {
  const FailureHandlerWidget({super.key});

  @override
  Widget buildWithNoneNullChild(BuildContext context, Widget child) {
    return BlocListener<FailureHandlerManager, HandlerState>(
      listener: (context, state) {
        if (state is HandlerHandlingState) {
          final navigatorContext = maybeResolve(context);
          if (navigatorContext != null && navigatorContext.mounted) {
            handle(
              navigatorContext,
              state.value,
            );
          }
        }
      },
      child: child,
    );
  }

  void handle(BuildContext context, Failure failure) {
    if (failure is DioFailure) {
      handleDioFailure(context, failure);
    }

    if (failure is DataConvertFailure) {
      handleDataConvertFailure(context, failure);
    }

    if (failure is GenericFailure) {
      handleGenericFailure(context, failure);
    }

    if (failure is PersistentFailure) {
      handlePersistentFailure(context, failure);
    }
  }

  void handleDioFailure(BuildContext context, DioFailure failure) {
    if (failure is ServerFailure || failure is BadRequestFailure) {
      final String code =
          convertFailureCode((failure as ResponseFailure).code ?? '');
      logging.i(failure.code);
      logging.i((failure as BadRequestFailure).message);

      final Map<String, String> errors = {
        "400002": S.of(context).errMess400002,
        "400003": S.of(context).errMess400003,
        "400004": S.of(context).errMess400004,
        "400005": S.of(context).errMess400005,
        "400006": S.of(context).errMess400006,
        "401": S.of(context).errMess401,
        "400001": S.of(context).errMess400001,
        "401001": S.of(context).errMess401001,
        "401002": S.of(context).errMess401002,
        "401003": S.of(context).errMess401003,
        "401004": S.of(context).errMess401004,
        "401005": S.of(context).errMess401005,
        "401006": S.of(context).errMess401006,
        "404001": S.of(context).errMess404001,
        "404002": S.of(context).errMess404002,
        "404003": S.of(context).errMess404003,
        "404004": S.of(context).errMess404004,
        "404005": S.of(context).errMess404005,
        "404006": S.of(context).errMess404006,
        "404007": S.of(context).errMess404007,
        "404008": S.of(context).errMess404008,
        "404009": S.of(context).errMess404009,
        "403001": S.of(context).errMess403001,
        "403002": S.of(context).errMess403002,
        "403003": S.of(context).errMess403003,
        "409001": S.of(context).errMess409001,
        "409002": S.of(context).errMess409002,
        "500": S.of(context).errMess500,
      };

      final errorMessage = errors[code];
      AlertRouteData(content: errorMessage ?? '').push(context);
    }

    if (failure is OtherDioFailure) {
      AlertRouteData(content: S.of(context).otherDioFailure).push(context);
    }

    if (failure is ConnectionFailure) {
      AlertRouteData(content: S.of(context).connectionFailure).push(context);
    }

    if (failure is TimeoutFailure) {
      AlertRouteData(content: S.of(context).timeoutFailure).push(context);
    }
  }

  void handleDataConvertFailure(
      BuildContext context, DataConvertFailure failure) {
    AlertRouteData(content: S.of(context).convertDataFailure).push(context);
  }

  void handleGenericFailure(BuildContext context, GenericFailure failure) {
    AlertRouteData(content: S.of(context).genericFailure).push(context);
  }

  void handlePersistentFailure(
      BuildContext context, PersistentFailure failure) {
    AlertRouteData(content: S.of(context).persistentFailure).push(context);
  }
}
