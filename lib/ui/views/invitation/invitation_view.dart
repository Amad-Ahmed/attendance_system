import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'invitation_viewmodel.dart';

class InvitationView extends StackedView<InvitationViewModel> {
  const InvitationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InvitationViewModel viewModel,
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
  InvitationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InvitationViewModel();
}
