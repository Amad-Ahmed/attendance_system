import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/chi_styles.dart';
import '../card/chi_card.dart';
import '../input_fields/chi_text_field.dart';
import 'country_json.dart';
import 'country_model.dart';

class CHICountryPicker extends StatefulWidget {
  final TextEditingController? controller;
  final bool autoFocus;
  final bool mandatory;
  final CountryModel initialCountry;
  final bool enableSearch;
  final String? hintText;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool enableInteractiveSelection;
  final Widget? suffixIcon;
  final Color? cursorColor;
  final bool enableHeading;
  final String heading;
  final bool enableSuggestions;
  final bool autocorrect;
  final Function(CountryModel) onGetCountry;
  final EdgeInsets scrollPadding;
  final AutovalidateMode? autovalidateMode;

  /// CHI Country Picker which is made according the design of CHI RPM App.
  const CHICountryPicker({
    super.key,
    this.controller,
    this.hintText,
    this.enableSearch = true,
    this.autoFocus = false,
    this.mandatory = false,
    this.maxLength,
    this.focusNode,
    this.enableInteractiveSelection = true,
    this.onSaved,
    this.onEditingComplete,
    this.textInputAction,
    this.validator,
    this.initialValue,
    this.suffixIcon,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.enableHeading = false,
    this.heading = 'Heading',
    this.cursorColor,
    this.scrollPadding = const EdgeInsets.all(20),
    this.autovalidateMode,
    required this.onGetCountry,
    required this.initialCountry,
  });

  @override
  State<CHICountryPicker> createState() => _CHICountryPickerState();
}

class _CHICountryPickerState extends State<CHICountryPicker> {
  @override
  void initState() {
    selectedCountry = widget.initialCountry;
    _getCountries();
    super.initState();
  }

  final _searchController = TextEditingController();

  late CountryModel selectedCountry;
  List<CountryModel> countries = [];
  List<CountryModel> filteredCountries = [];
  void onCountrySelect(CountryModel country) {
    setState(() {
      selectedCountry = country;
    });
    widget.onGetCountry(country);
    _searchController.clear();
    filteredCountries.clear();
    Navigator.pop(context);
  }

  void _getCountries() {
    for (var c in countryJson) {
      countries.add(CountryModel.fromMap(c));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.enableHeading,
          child: Text.rich(TextSpan(
              text: widget.heading,
              style: CHIStyles.smMediumStyle,
              children: <InlineSpan>[
                if (widget.mandatory)
                  TextSpan(
                      text: '*',
                      style: TextStyle(color: CHIStyles.darkErrorColor))
              ])),
        ),
        SizedBox(height: widget.enableHeading ? 6 : 0),
        IntrinsicHeight(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: 56,
                decoration: BoxDecoration(
                  color: CHIStyles.cardColor,
                  border: CHIStyles.cardBorder,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: CHIStyles.cardShadow,
                ),
              ),
              Center(
                child: TextFormField(
                  autovalidateMode: widget.autovalidateMode,
                  textAlignVertical: TextAlignVertical.center,
                  autofocus: widget.autoFocus,
                  focusNode: widget.focusNode,
                  onSaved: widget.onSaved,
                  validator: widget.validator,
                  scrollPadding: widget.scrollPadding,
                  initialValue: widget.initialValue,
                  textInputAction: widget.textInputAction,
                  cursorColor: widget.cursorColor,
                  onEditingComplete: widget.onEditingComplete,
                  controller: widget.controller,
                  maxLength: widget.maxLength,
                  maxLines: 1,
                  minLines: 1,
                  enableSuggestions: widget.enableSuggestions,
                  autocorrect: widget.autocorrect,
                  enableInteractiveSelection: widget.enableInteractiveSelection,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  style: CHIStyles.mdNormalStyle,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: _prefixIcon(),
                    border: InputBorder.none,
                    errorStyle: TextStyle(color: CHIStyles.primaryErrorColor),
                    hintText: widget.hintText,
                    suffixIcon: widget.suffixIcon,
                    contentPadding: const EdgeInsets.only(right: 12),
                    hintStyle: CHIStyles.mdNormalStyle
                        .copyWith(color: CHIStyles.lightGreyColor),
                    counterText: '',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<dynamic> _countryPickerBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) => Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Center(
                        child: Text('Select Country',
                            style: CHIStyles.mdNormalStyle)),
                  ),
                  widget.enableSearch
                      ? _countrySearchField(setState)
                      : const SizedBox(),
                  Flexible(
                    child: _itemslistView(
                      filteredCountries.isEmpty ? countries : filteredCountries,
                      onTap: onCountrySelect,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _countrySearchField(StateSetter setState) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: CHITextField(
        hintText: 'search',
        controller: _searchController,
        textInputAction: TextInputAction.search,
        onFieldSubmitted: (value) => FocusScope.of(context).unfocus(),
        onChanged: (p0) {
          setState(() {
            filteredCountries.clear();
            for (CountryModel i in countries) {
              final str =
                  "${i.countryName}${i.dialCode}${i.countryCode}".toLowerCase();
              if (str.contains(_searchController.text.toLowerCase().trim())) {
                filteredCountries.add(i);
              }
            }
          });
        },
      ),
    );
  }

  Widget _prefixIcon() {
    return InkWell(
        onTap: () {
          _countryPickerBottomSheet(context);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                selectedCountry.dialCode!,
                style: CHIStyles.mdNormalStyle
                    .copyWith(color: CHIStyles.primaryColor),
              ),
              const SizedBox(width: 2),
              Text(selectedCountry.countryCode!,
                  style: CHIStyles.mdNormalStyle
                      .copyWith(color: CHIStyles.primaryColor)),
              Icon(Icons.arrow_drop_down, color: CHIStyles.primaryColor),
            ],
          ),
        ));
  }

  Widget _itemslistView(List<CountryModel> items,
      {required CountryCallBack onTap}) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final country = items[index];
          return Column(
            children: [
              CHICard(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                            "${country.dialCode} ${country.countryName} (${country.countryCode})",
                            style: CHIStyles.mdNormalStyle)),
                    selectedCountry == country
                        ? Icon(Icons.done,
                            color: CHIStyles.primaryColor, size: 20.0)
                        : const SizedBox.shrink(),
                  ],
                ),
                onTap: () => onTap(country),
              ),
              const SizedBox(height: 8),
            ],
          );
        });
  }
}

typedef CountryCallBack = void Function(CountryModel);
