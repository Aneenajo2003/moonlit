import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight_final/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../address/address_view.dart';

class CheckoutViewModel extends BaseViewModel {
  int _currentStep = 0;

  int get currentStep => _currentStep;

  void setStep(int step) {
    _currentStep = step;
    notifyListeners();
  }

  void nextStep() {
    if (_currentStep < 2) {
      _currentStep++;
      notifyListeners();
    }
  }

  void previousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
  }

  Widget buildStep(BuildContext context, CheckoutViewModel viewModel,
      IconData icon, String title, int step) {
    bool isActive = viewModel.currentStep >= step;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: isActive ? appcolor : Colors.grey),
        SizedBox(height: 4),
        Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 12.sp, // ScreenUtil applied here
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget buildLine(int step, CheckoutViewModel viewModel) {
    bool isActive = viewModel.currentStep >= step;

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 60.w,
      height: 2.h,
      color: isActive ? appcolor : Colors.grey,
      margin: EdgeInsets.symmetric(horizontal: 5),
    );
  }

  Widget buildStepContent(int step) {
    switch (step) {
      case 0:
        return AddressView();
      case 1:
        return Center(child: Text('Order Summary Step'));
      case 2:
        return Center(child: Text('Payment Step'));
      default:
        return Container();
    }
  }
}
