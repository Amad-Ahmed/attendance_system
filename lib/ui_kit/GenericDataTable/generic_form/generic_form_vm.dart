import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

typedef ModelFromJsonParse = dynamic Function(Map<String, dynamic> resp);

class GenericFormViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();

  convertMap(item) {
    if (item != null) {
      map = item.toMap();
    }
  }

  Map<String, dynamic> map = {};
  dynamic convertToObject(Map<String, dynamic> myMap) {
    return item.toDart(myMap);
  }

  List<String> keys = [];
  List<dynamic> values = [];

  late final item;
  TextEditingController searchController = TextEditingController();

  onItemName(String? value, String element) {
    map[element] =
        map[element].runtimeType == int ? int.tryParse(value!) : value;
    notifyListeners();
  }
}
