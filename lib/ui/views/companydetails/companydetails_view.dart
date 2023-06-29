import 'package:attendance_app/ui/views/companydetails/companydetails_view.form.dart';
import 'package:attendance_app/ui_kit/bottomsheet/drop_down_bottom_sheet.dart';
import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../ui_kit/input_fields/chi_text_field.dart';
import '../../common/app_strings.dart';
import 'companydetails_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'companyName'),
  FormTextField(name: 'companyDescription'),
  FormDropdownField(items: [
    StaticDropdownItem(title: "Private Limited", value: "Private Limited"),
    StaticDropdownItem(title: "Public Limited", value: "Public Limited"),
    StaticDropdownItem(title: "Partnership", value: "Partnership"),
    StaticDropdownItem(title: "Proprietorship", value: "Proprietorship"),
    StaticDropdownItem(title: "LLP", value: "LLP"),
    StaticDropdownItem(title: "Others", value: "Others"),
  ], name: 'companyType')
])
class CompanydetailsView extends StackedView<CompanydetailsViewModel>
    with $CompanydetailsView {
  const CompanydetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CompanydetailsViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              kCompanyDetails,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 50),
            CHITextField(
              hintText: kCompanyName,
              controller: companyNameController,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 20),
            CHITextField(
              hintText: kCompanyDetails,
              controller: companyDescriptionController,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 20),
            CHIDropDownBottomSheet(
                title: "Company Type",
                items: viewModel.companyTypeList,
                onTap: () {}),
            const SizedBox(height: 20),
            CHIButton(btnLabel: kNext, onTap: () => viewModel.next())
          ],
        ),
      )),
    ));
  }

  @override
  void onViewModelReady(CompanydetailsViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  CompanydetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CompanydetailsViewModel();
}

// DropdownButton(
//               items: const [
//                 DropdownMenuItem(
//                   child: Text("Private Limited"),
//                   value: "Private Limited",
//                 ),
//                 DropdownMenuItem(
//                   child: Text("Public Limited"),
//                   value: "Public Limited",
//                 ),
//                 DropdownMenuItem(
//                   child: Text("Partnership"),
//                   value: "Partnership",
//                 ),
//                 DropdownMenuItem(
//                   child: Text("Proprietorship"),
//                   value: "Proprietorship",
//                 ),
//                 DropdownMenuItem(
//                   child: Text("LLP"),
//                   value: "LLP",
//                 ),
//                 DropdownMenuItem(
//                   child: Text("Others"),
//                   value: "Others",
//                 ),
//               ],
//               onChanged: (value) {
//                 print(value);
//                 viewModel.setCompanyType(value.toString());
//               },
//             ),
