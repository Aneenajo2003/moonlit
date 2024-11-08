import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight_final/ui/views/ordersummary/ordersummary_view.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../address/address_view.dart';
import 'checkout_viewmodel.dart';

class CheckoutView extends StackedView<CheckoutViewModel> {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      CheckoutViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(viewModel.currentStep),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Custom Stepper
            Container(
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  viewModel.buildStep(
                      context, viewModel, Icons.home, 'Address', 0),
                  viewModel.buildLine(1, viewModel),
                  viewModel.buildStep(context, viewModel,
                      Icons.receipt_outlined, 'Order Summary', 1),
                  viewModel.buildLine(2, viewModel),
                  viewModel.buildStep(
                      context, viewModel, Icons.payments, 'Payment', 2),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: viewModel.currentStep,
                children: const [
                  AddressView(),
                  OrdersummaryView(),
                  // PaymentView(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: viewModel.currentStep == 2
          ? null
          : BottomNavigationBar(
        

        items: [
          BottomNavigationBarItem(

            icon: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '₹ 26,000/-',
                    style: GoogleFonts.montserrat(
                      fontSize: 12.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff706F6F),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Text(
                    '₹ 24,700/-',
                    style: GoogleFonts.montserrat(
                      fontSize: 16.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            label: '', // No label needed
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40.h, // Adjust height as needed
              child: ElevatedButton(
                onPressed: viewModel.nextStep,
                child: Text(
                  'Continue',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp, // ScreenUtil applied here
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: appcolor, // Button color
                  padding: EdgeInsets.symmetric(
                      horizontal: 40.w, vertical: 10.h), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(10.r), // Rounded corners
                  ),
                ),
              ),
            ),
            label: '', // No label needed
          ),
        ],
        backgroundColor: Color(0xffD5E1DD),
        elevation: 0,
      ),
    );
  }

  PreferredSizeWidget? _buildAppBar(int step) {
    switch (step) {
      case 0:
        return AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: appcolor,
            size: 20.sp, // ScreenUtil applied here
          ),
          centerTitle: true,
          title: Text(
            "ADDRESS",
            style: GoogleFonts.montserrat(
              fontSize: 20.sp, // ScreenUtil applied here
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        );
      case 1:
        return AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: appcolor,
            size: 20.sp, // ScreenUtil applied here
          ),
          centerTitle: true,
          title: Text(
            "ORDER SUMMARY",
            style: GoogleFonts.montserrat(
              fontSize: 20.sp, // ScreenUtil applied here
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        );
      case 2:
        return AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
             onPressed: () {  },
            icon: Icon(Icons.arrow_back_ios_new,color: appcolor,
              size: 20.sp, )

            // ScreenUtil applied here
          ),
          centerTitle: true,
          title: Text(
            "PAYMENT",
            style: GoogleFonts.montserrat(
              fontSize: 20.sp, // ScreenUtil applied here
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        );
      default:
        return null;
    }
  }

  @override
  CheckoutViewModel viewModelBuilder(BuildContext context) =>
      CheckoutViewModel();
}
