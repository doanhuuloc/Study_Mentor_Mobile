import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../di/di.dart';
import '../../bases/childless_assertion/childless_assertion.dart';

class DIDataInject extends SingleChildStatelessWidget with ChildlessAssertion {
  const DIDataInject({
    super.key,
    required this.data,
  });

  final AppDIData data;

  @override
  Widget buildWithNoneNullChild(BuildContext context, Widget child) {
    return Nested(
      children: [
        RepositoryProvider.value(value: data),
        RepositoryProvider.value(value: data.config),
        RepositoryProvider.value(value: data.tokenService),
        RepositoryProvider.value(value: data.refreshTokenManager),
        RepositoryProvider.value(value: data.appUsernameService),
      ],
      child: child,
    );
  }
}
