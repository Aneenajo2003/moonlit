import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../cards/homes/lightcard.dart';
import '../../cards/homes/shopby_card.dart';

class HomeViewModel extends BaseViewModel {
  final TextEditingController searchController = TextEditingController();
  final List<String> banners = [
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
  ];

  List<Widget> lightcards = [
    LightCategoryCard(
      imagePath: 'assets/images/img_4.png',
      title: 'Fairy Lights',
    ),
    LightCategoryCard(
      imagePath: 'assets/images/img_5.png',
      title: 'Chandeliers',
    ),
    LightCategoryCard(
      imagePath: 'assets/images/img_6.png',
      title: 'Outdoor',
    ),
    LightCategoryCard(
      imagePath: 'assets/images/img_5.png',
      title: 'Chandeliers',
    ),
    LightCategoryCard(
      imagePath: 'assets/images/img_6.png',
      title: 'Outdoor',
    ),
  ];

  // List of shop by room items (pairs of cards)
  final List<List<ShopByRoomItem>> shopByRoomItems = [
    [
      ShopByRoomItem(
          imagePath: 'assets/images/img_7.png', title: 'Living room'),
      ShopByRoomItem(
          imagePath: 'assets/images/img_8.png', title: 'Dining room'),
    ],
    [
      ShopByRoomItem(imagePath: 'assets/images/img_9.png', title: 'Bath room'),
      ShopByRoomItem(imagePath: 'assets/images/img_10.png', title: 'Kitchen'),
    ],
    // Add more pairs as needed
  ];

  // New field to manage the current index
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final PageController smothcntrl = PageController();

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    smothcntrl.dispose();
    super.dispose();
  }
}

class ShopByRoomItem {
  final String imagePath;
  final String title;

  ShopByRoomItem({required this.imagePath, required this.title});
}
