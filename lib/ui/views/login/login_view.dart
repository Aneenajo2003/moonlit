import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    // Initialize ScreenUtil for responsive design
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: const Color(0xff183D3D),
      body: ListView(children: [
        SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: viewModel.formKey,
              child: Container(
                height: 1.sh, // Full screen height
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_back.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 32.w), // Responsive padding
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 150.h), // Responsive top padding
                      child: Text(
                        'Welcome Back!',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 28.sp, // Responsive font size
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h), // Responsive spacing
                    Container(
                      height: 40.h, // Responsive height
                      width: 328.w, // Responsive width
                      decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius:
                              BorderRadius.circular(12.r), // Responsive radius
                          border: Border.all(
                              width: 2.w, color: const Color(0xffD5E1DD))),
                      child: TextFormField(
                        controller: viewModel.emailctrl,
                        decoration: InputDecoration(
                            hintText: 'Username/E-mail',
                            hintStyle: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              color: Color(0xffC7C7C7), // Responsive font size
                              fontWeight: FontWeight.w300,
                            ),
                            prefixIcon: const Icon(Icons.person_outline,
                                color: Colors.white),
                            border: InputBorder.none),
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
                      height: 40.h, // Responsive height
                      width: 328.w, // Responsive width
                      decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius:
                              BorderRadius.circular(12.r), // Responsive radius
                          border: Border.all(
                              width: 2.w, color: const Color(0xffD5E1DD))),
                      child: TextFormField(
                        controller: viewModel.pwdctrlr,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            color: Color(0xffC7C7C7), // Responsive font size
                            fontWeight: FontWeight.w300,
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon: Icon(Icons.visibility_off_outlined,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h), // Responsive spacing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 1, // Adjust scaling as necessary
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
                                      return const BorderSide(
                                          color: Colors.transparent,
                                          width: 0); // No border when selected
                                    }
                                    return const BorderSide(
                                        color: Colors.transparent,
                                        width: 0); // No border when unselected
                                  },
                                ),
                              ),
                            ),
                            Text(
                              'Remember me',
                              style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                color: Colors.white, // Responsive font size
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.montserrat(
                              fontSize: 12.sp,
                              color: Colors.white, // Responsive font size
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h), // Responsive spacing
                    SizedBox(
                      height: 40.h, // Responsive height
                      width: 220.w, // Responsive width
                      child: ElevatedButton(
                        onPressed: () {
                          viewModel.navigateDetails();
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: const Color(0xffC0CECE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            )),
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.montserrat(
                            fontSize: 18.sp,
                            color: Color(0xff183D3D), // Responsive font size
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.sp,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0), // Shadow position
                                color: Colors.black
                                    .withOpacity(0.3), // Shadow color
                                blurRadius: 3.0, // Shadow blur
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h), // Responsive spacing
                    Center(
                        child: Image.asset(
                      "assets/images/img_21.png",
                      height: 40.h, // Responsive height
                      width: 130.w, // Responsive width
                    )),
                    SizedBox(height: 20.h), // Responsive spacing
                    Center(
                        child: Image.asset(
                      "assets/images/img_22.png",
                      height: 40.h, // Responsive height
                      width: 150.w, // Responsive width
                    )),
                    SizedBox(height: 28.h), // Responsive spacing
                    Padding(
                        padding: EdgeInsets.only(left: 40.w),
                        child: Row(
                          children: [
                            Text(
                              "Don't have an account?",
                              style: GoogleFonts.montserrat(
                                fontSize: 14.sp,
                                color: Colors.white, // Responsive font size
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  viewModel.navigateToDetails();
                                },
                                child: Text(
                                  "Signup",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14.sp,
                                    color: Colors.white, // Responsive font size
                                    fontWeight: FontWeight.w700,
                                  ),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
