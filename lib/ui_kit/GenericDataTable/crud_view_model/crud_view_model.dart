import 'package:stacked/stacked.dart';

abstract class CrudViewModel extends BaseViewModel {
  void create(Object? item);
  void delete(Object? item);
  void update(Object? item);
}
