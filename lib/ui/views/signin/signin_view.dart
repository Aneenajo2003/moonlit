import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'signin_viewmodel.dart';

class SigninView extends StackedView<SigninViewModel> {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: const Color(0xff183D3D),
      body: Form(
        key: viewModel.formKey,
        child: SingleChildScrollView(
          child: Container(
            // Full height based on screen size
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_back.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40.h,
                  left: 10.w, // Responsive top position
                  // Responsive right position
                  child: CircleAvatar(
                    radius: 28.r, // Responsive radius
                    backgroundColor: const Color(0xffD5E1DD),
                    child: IconButton(
                      onPressed: () {
                        viewModel.navigateToDet();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 25.sp, // Responsive icon size
                      ),
                      color: const Color(0xff183D3D),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 190.h), // Responsive padding
                      child: Text(
                        'Create Account',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 28.sp, // Responsive font size
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 45.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          width: 2.w, // Responsive border width
                          color: const Color(0xffD5E1DD),
                        ),
                      ),
                      child: TextFormField(
                        controller: viewModel.namectrlr,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xffD5E1DD),
                            fontSize: 14.sp, // Responsive font size
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.white,
                            size: 24.sp, // Responsive icon size
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 45.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          width: 2.w,
                          color: const Color(0xffD5E1DD),
                        ),
                      ),
                      child: TextFormField(
                        controller: viewModel.mblctrlr,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xffD5E1DD),
                            fontSize: 14.sp, // Responsive font size
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.phone_android_sharp,
                            color: Colors.white,
                            size: 24.sp,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 45.h,
                      width: 328.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          width: 2.w,
                          color: const Color(0xffD5E1DD),
                        ),
                      ),
                      child: TextFormField(
                        controller: viewModel.emailctrl,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xffD5E1DD),
                            fontSize: 14.sp, // Responsive font size
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(
                            Icons.alternate_email_sharp,
                            color: Colors.white,
                            size: 24.sp,
                          ),
                          border: InputBorder.none,
                        ),
                        validator: (String? value) {
                          String pattern =
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(value!)) {
                            return 'Enter Valid Email';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 16.h), // Responsive spacing
                    Container(
                      height: 45.h, // Responsive height
                      width: 328.w, // Responsive width
                      decoration: BoxDecoration(
                        color: const Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius:
                            BorderRadius.circular(12.r), // Responsive radius
                        border: Border.all(
                            width: 2.w, color: const Color(0xffD5E1DD)),
                      ),
                      child: TextFormField(
                        controller: viewModel.pwdctrlr,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            color: Color(0xffC7C7C7), // Responsive font size
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h), // Responsive spacing
                    Container(
                      height: 45.h, // Responsive height
                      width: 328.w, // Responsive width
                      decoration: BoxDecoration(
                        color: const Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius:
                            BorderRadius.circular(12.r), // Responsive radius
                        border: Border.all(
                            width: 2.w, color: const Color(0xffD5E1DD)),
                      ),
                      child: TextFormField(
                        controller: viewModel.cnfctrlr,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            color: Color(0xffC7C7C7), // Responsive font size
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.only(left: 45.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Transform.scale(
                                scale: 1.3, // Adjust scaling as necessary
                                child: Checkbox(
                                  value: viewModel.isChecked,
                                  onChanged: viewModel.toggleCheckbox,
                                  checkColor: Colors.black,
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      return const Color(0xffC0CECE);
                                    },
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0.r),
                                  ),
                                  side: MaterialStateBorderSide.resolveWith(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return BorderSide(
                                            color: Colors.transparent,
                                            width:
                                                0); // No border when selected
                                      }
                                      return BorderSide(
                                          color: Colors.transparent,
                                          width:
                                              0); // No border when unselected
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'By continuing you agree to',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize:
                                              12.sp, // Responsive font size
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        ' Moonlits',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontSize:
                                              12.sp, // Responsive font size
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Privacy & Terms of service.',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 12.sp, // Responsive font size
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 45.h,
                      width: 250.w,
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.navigateDetails();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: const Color(0xffC0CECE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: const Color(0xff183D3D),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Image.asset(
                        "assets/images/img_21.png",
                        height: 40.h,
                        width: 150.w,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Center(
                      child: Image.asset(
                        "assets/images/img_22.png",
                        height: 40.h,
                        width: 150.w,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            viewModel.navigateToDet();
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SigninViewModel viewModelBuilder(BuildContext context) => SigninViewModel();
}
