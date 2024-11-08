import 'package:moonlight_final/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:moonlight_final/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:moonlight_final/ui/views/home/home_view.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:moonlight_final/ui/views/login/login_view.dart';
import 'package:moonlight_final/ui/views/splash/splash_view.dart';
import 'package:moonlight_final/ui/views/category/category_view.dart';
import 'package:moonlight_final/ui/views/cart/cart_view.dart';
import 'package:moonlight_final/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:moonlight_final/ui/views/productdetail/productdetail_view.dart';
import 'package:moonlight_final/ui/views/profile/profile_view.dart';
import 'package:moonlight_final/ui/views/signin/signin_view.dart';
import 'package:moonlight_final/ui/views/checkout/checkout_view.dart';
import 'package:moonlight_final/ui/views/address/address_view.dart';
import 'package:moonlight_final/ui/views/ordersummary/ordersummary_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),

    MaterialRoute(page: LoginView),
    MaterialRoute(page: SplashView),
    MaterialRoute(page: CategoryView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: BottomNavigationView),
    MaterialRoute(page: ProductdetailView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: CheckoutView),
    MaterialRoute(page: AddressView),
    MaterialRoute(page: OrdersummaryView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
