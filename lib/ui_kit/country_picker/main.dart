import 'package:flutter/material.dart';

import '../../constants/chi_styles.dart';
import '../buttons/chi_button.dart';
import 'chi_country_picker.dart';
import 'country_model.dart';

void main() {
  runApp(const CountryApp());
}

class CountryApp extends StatefulWidget {
  const CountryApp({super.key});

  @override
  State<CountryApp> createState() => _CountryAppState();
}

class _CountryAppState extends State<CountryApp> {
  final formKey = GlobalKey<FormState>();
  String text = 'Please Select a Country';
  CountryModel _country = CountryModel(
      countryName: 'United States', countryCode: 'US', dialCode: '+1');
  String? _validator(value) {
    if (value.isEmpty || value.length < 8) {
      return 'Please enter valid phone no.';
    }
    return null;
  }

  String phoneNumber = '';
  _onSaved(String? value) {
    phoneNumber = value!.trim();
  }

  void _onGetCountry(CountryModel country) {
    setState(() {
      _country = country;
    });
  }

  void _onTest() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      text =
          "You selected ${_country.countryName} and your mobile number is:\n${_country.dialCode}$phoneNumber";
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text, style: CHIStyles.smMediumStyle),
                const SizedBox(height: 20),
                CHICountryPicker(
                  hintText: 'Enter Phone no',
                  initialCountry: _country,
                  mandatory: true,
                  enableHeading: true,
                  heading: 'Phone No.',
                  onGetCountry: _onGetCountry,
                  validator: _validator,
                  onSaved: _onSaved,
                  maxLength: 15,
                ),
                const SizedBox(height: 20),
                CHIButton(
                  btnLabel: 'TEST',
                  onTap: () => _onTest(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
