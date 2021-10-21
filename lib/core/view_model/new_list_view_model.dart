import 'package:providence_shopping_list/core/class/item_course.dart';
import 'package:rxdart/subjects.dart';

class NewListViewModel {
  List<ItemCourse> _items = [];
  BehaviorSubject<List<ItemCourse>> itemsStream =
      BehaviorSubject<List<ItemCourse>>();

  String? titre;

  void addItem(String itemName, int quantity) {
    var tempItem = ItemCourse(nom: itemName, quantity: quantity);
    _items.add(tempItem);
    itemsStream.add(_items);
  }

  void removeItem(String itemName) {
    _items.removeWhere((element) => element.nom == itemName);
    itemsStream.add(_items);
  }
}
