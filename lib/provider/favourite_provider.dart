import 'package:flutter/material.dart';
import 'package:forge/apiIntegrationLearning/cake_model.dart';

class FavouriteProvider with ChangeNotifier {
  final List<CakeModel> _selectedItems = [];

  List<CakeModel> get selectedItems => _selectedItems;

  void addItem(CakeModel item) {
    _selectedItems.add(item);
    notifyListeners();
  }

  void removeItem(CakeModel item) {
    _selectedItems.remove(item);
    notifyListeners();
  }

  bool isFavourite(CakeModel item) {
    return _selectedItems.contains(item);
  }
}
