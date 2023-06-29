import 'package:attendance_app/ui_kit/buttons/chi_button.dart';
import 'package:attendance_app/ui_kit/scaffold/chi_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_profile_viewmodel.dart';

class AdminProfileView extends StackedView<AdminProfileViewModel> {
  const AdminProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminProfileViewModel viewModel,
    Widget? child,
  ) {
    return CHIScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://googleflutter.com/sample_image.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Personal Summary",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldContainer(
                  label: "Name",
                  text: "John Doe",
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldContainer(
                  label: "Email",
                  text: "johndoe@example.com",
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldContainer(
                  label: "Mobile Number",
                  text: "+1 1234567890",
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextFieldContainer(
                  label: "Date of Birth",
                  text: "Jan 1, 1990",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Invitation Link",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CHIButton(
                        btnLabel: "Copy Link",
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CHIButton(btnLabel: "Share Link", onTap: () {}),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CHIButton(btnLabel: "Logout", onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  AdminProfileViewModel viewModelBuilder(BuildContext context) =>
      AdminProfileViewModel();
}

class TextFieldContainer extends StatelessWidget {
  final String label;
  final String text;

  const TextFieldContainer({
    Key? key,
    required this.label,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
