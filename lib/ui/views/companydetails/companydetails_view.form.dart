// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String CompanyNameValueKey = 'companyName';
const String CompanyDescriptionValueKey = 'companyDescription';
const String CompanyTypeValueKey = 'companyType';

final Map<String, String> CompanyTypeValueToTitleMap = {
  'Private Limited': 'Private Limited',
  'Public Limited': 'Public Limited',
  'Partnership': 'Partnership',
  'Proprietorship': 'Proprietorship',
  'LLP': 'LLP',
  'Others': 'Others',
};

final Map<String, TextEditingController>
    _CompanydetailsViewTextEditingControllers = {};

final Map<String, FocusNode> _CompanydetailsViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _CompanydetailsViewTextValidations = {
  CompanyNameValueKey: null,
  CompanyDescriptionValueKey: null,
};

mixin $CompanydetailsView {
  TextEditingController get companyNameController =>
      _getFormTextEditingController(CompanyNameValueKey);
  TextEditingController get companyDescriptionController =>
      _getFormTextEditingController(CompanyDescriptionValueKey);
  FocusNode get companyNameFocusNode => _getFormFocusNode(CompanyNameValueKey);
  FocusNode get companyDescriptionFocusNode =>
      _getFormFocusNode(CompanyDescriptionValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_CompanydetailsViewTextEditingControllers.containsKey(key)) {
      return _CompanydetailsViewTextEditingControllers[key]!;
    }

    _CompanydetailsViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CompanydetailsViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CompanydetailsViewFocusNodes.containsKey(key)) {
      return _CompanydetailsViewFocusNodes[key]!;
    }
    _CompanydetailsViewFocusNodes[key] = FocusNode();
    return _CompanydetailsViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    companyNameController.addListener(() => _updateFormData(model));
    companyDescriptionController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    companyNameController.addListener(() => _updateFormData(model));
    companyDescriptionController.addListener(() => _updateFormData(model));
  }

  static const bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          CompanyNameValueKey: companyNameController.text,
          CompanyDescriptionValueKey: companyDescriptionController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _CompanydetailsViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CompanydetailsViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CompanydetailsViewTextEditingControllers.clear();
    _CompanydetailsViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get companyNameValue =>
      this.formValueMap[CompanyNameValueKey] as String?;
  String? get companyDescriptionValue =>
      this.formValueMap[CompanyDescriptionValueKey] as String?;
  String? get companyTypeValue =>
      this.formValueMap[CompanyTypeValueKey] as String?;

  set companyNameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          CompanyNameValueKey: value,
        }),
    );

    if (_CompanydetailsViewTextEditingControllers.containsKey(
        CompanyNameValueKey)) {
      _CompanydetailsViewTextEditingControllers[CompanyNameValueKey]?.text =
          value ?? '';
    }
  }

  set companyDescriptionValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          CompanyDescriptionValueKey: value,
        }),
    );

    if (_CompanydetailsViewTextEditingControllers.containsKey(
        CompanyDescriptionValueKey)) {
      _CompanydetailsViewTextEditingControllers[CompanyDescriptionValueKey]
          ?.text = value ?? '';
    }
  }

  bool get hasCompanyName =>
      this.formValueMap.containsKey(CompanyNameValueKey) &&
      (companyNameValue?.isNotEmpty ?? false);
  bool get hasCompanyDescription =>
      this.formValueMap.containsKey(CompanyDescriptionValueKey) &&
      (companyDescriptionValue?.isNotEmpty ?? false);
  bool get hasCompanyType => this.formValueMap.containsKey(CompanyTypeValueKey);

  bool get hasCompanyNameValidationMessage =>
      this.fieldsValidationMessages[CompanyNameValueKey]?.isNotEmpty ?? false;
  bool get hasCompanyDescriptionValidationMessage =>
      this.fieldsValidationMessages[CompanyDescriptionValueKey]?.isNotEmpty ??
      false;
  bool get hasCompanyTypeValidationMessage =>
      this.fieldsValidationMessages[CompanyTypeValueKey]?.isNotEmpty ?? false;

  String? get companyNameValidationMessage =>
      this.fieldsValidationMessages[CompanyNameValueKey];
  String? get companyDescriptionValidationMessage =>
      this.fieldsValidationMessages[CompanyDescriptionValueKey];
  String? get companyTypeValidationMessage =>
      this.fieldsValidationMessages[CompanyTypeValueKey];
}

extension Methods on FormViewModel {
  void setCompanyType(String companyType) {
    this.setData(this.formValueMap..addAll({CompanyTypeValueKey: companyType}));
  }

  setCompanyNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CompanyNameValueKey] = validationMessage;
  setCompanyDescriptionValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CompanyDescriptionValueKey] =
          validationMessage;
  setCompanyTypeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CompanyTypeValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    companyNameValue = '';
    companyDescriptionValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      CompanyNameValueKey: getValidationMessage(CompanyNameValueKey),
      CompanyDescriptionValueKey:
          getValidationMessage(CompanyDescriptionValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _CompanydetailsViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _CompanydetailsViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormViewModel model) => model.setValidationMessages({
      CompanyNameValueKey: getValidationMessage(CompanyNameValueKey),
      CompanyDescriptionValueKey:
          getValidationMessage(CompanyDescriptionValueKey),
    });
