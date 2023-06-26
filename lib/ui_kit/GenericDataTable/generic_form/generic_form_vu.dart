// ignore_for_file: must_be_immutable

import '../../../ui_kit/appBar/chi_appbar.dart';
import '../../../ui_kit/buttons/chi_button.dart';
import '../../../ui_kit/input_fields/chi_text_field.dart';
import '../../../ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'generic_form_vm.dart';

class GenericForm<T> extends StackedView<GenericFormViewModel> {
  GenericForm({
    Key? key,
    required this.title,
    this.model,
  }) : super(key: key);
  String title;
  dynamic model;

  @override
  Widget builder(
      BuildContext context, GenericFormViewModel viewModel, Widget? child) {
    return CHIScaffold(
        appBar: CHIAppBar(title: title),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Form(
                key: viewModel.formKey,
                child: Column(
                  children: [
                    ...viewModel.item.toMap().keys.map((key) {
                      final value = viewModel.item.toMap()[key];
                      return Column(
                        children: [
                          CHITextField(
                            initialValue: value ?? '',
                            onSaved: (p0) {
                              viewModel.onItemName(p0, key);
                            },
                            keyboardType: value.runtimeType == int ||
                                    value.runtimeType == double
                                ? TextInputType.number
                                : TextInputType.name,
                            hintText: key,
                          ),
                          const SizedBox(height: 12),
                        ],
                      );
                    }),
                    const SizedBox(height: 18),
                    CHIButton(
                      btnLabel: 'Ok',
                      onTap: () {
                        if (viewModel.formKey.currentState!.validate()) {
                          viewModel.formKey.currentState!.save();
                          debugPrint('$model');
                          debugPrint('${viewModel.values}');
                          var data = viewModel.convertToObject(viewModel.map);
                          Navigator.pop(context, data);
                        }
                      },
                    )
                  ],
                )),
          ),
        ));
  }

  @override
  GenericFormViewModel viewModelBuilder(BuildContext context) {
    return GenericFormViewModel();
  }
}
