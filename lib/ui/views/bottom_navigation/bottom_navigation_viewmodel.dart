import 'package:flutter/cupertino.dart';
import 'package:moonlight_final/ui/views/cart/cart_view.dart';
import 'package:moonlight_final/ui/views/category/category_view.dart';
import 'package:moonlight_final/ui/views/home/home_view.dart';
import 'package:moonlight_final/ui/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class BottomNavigationViewModel extends BaseViewModel {
  int _page = 0;
  int get page => _page;
  // Getter for the selected page

  List<Widget> pagelist = [
    HomeView(),
    CategoryView(),
    CartView(),
    ProfileView()
  ];

  void ontapchange(int index) {
    _page = index;
    notifyListeners();
  }
}
