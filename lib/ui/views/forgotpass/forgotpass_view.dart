import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'forgotpass_viewmodel.dart';

class ForgotpassView extends StackedView<ForgotpassViewModel> {
  const ForgotpassView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgotpassViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ForgotpassViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgotpassViewModel();
}
