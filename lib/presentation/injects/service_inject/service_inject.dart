import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../di/di.dart';
import '../../bases/childless_assertion/childless_assertion.dart';

class ServiceInject extends SingleChildStatelessWidget with ChildlessAssertion {
  const ServiceInject({super.key});

  @override
  Widget buildWithNoneNullChild(BuildContext context, Widget child) {
    final AppDIData appDIData = context.read<AppDIData>();
    return Nested(
      children: [
        RepositoryProvider.value(value: appDIData.authController),
        RepositoryProvider.value(value: appDIData.userController),
        RepositoryProvider.value(value: appDIData.fileController),
        RepositoryProvider.value(value: appDIData.localeService),
      ],
      child: child,
    );
  }
}
