import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight_final/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'address_viewmodel.dart';

class AddressView extends StackedView<AddressViewModel> {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddressViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              width: 358.w,
              height: 173.h,
              decoration: BoxDecoration(
                color: Color(0xffD5E1DD),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver To: ',
                          style: GoogleFonts.montserrat(
                            fontSize: 14.sp, // ScreenUtil applied here
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 66.w,
                          height: 18.h,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home,
                              color: appcolor,
                              size: 16.sp, // Responsive icon size
                            ),
                            label: Text(
                              'Home',
                              style: GoogleFonts.montserrat(
                                fontSize: 13.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: appcolor,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white38,

                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.r), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110.w,
                        ),
                        SizedBox(
                          width: 39.w,
                          height: 20.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: GoogleFonts.montserrat(
                                fontSize: 14.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appcolor,
                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0,
                      indent: 5,
                      endIndent: 1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Abubakar",
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Alathoor House, Alathoor (p.o), opposite H&Y auditorium Alathoor center, Kerala,\npin: 680243',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 358.w,
              height: 173.h,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver To: ',
                          style: GoogleFonts.montserrat(
                            fontSize: 14.sp, // ScreenUtil applied here
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 66.w,
                          height: 18.h,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.business_sharp,
                              color: appcolor,
                              size: 16.sp, // Responsive icon size
                            ),
                            label: Text(
                              'Home',
                              style: GoogleFonts.montserrat(
                                fontSize: 13.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: appcolor,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white38,

                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.r), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110.w,
                        ),
                        SizedBox(
                          width: 39.w,
                          height: 20.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: GoogleFonts.montserrat(
                                fontSize: 14.sp, // ScreenUtil applied here
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appcolor,
                              padding:
                                  EdgeInsets.zero, // Remove internal padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Responsive border radius
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0,
                      indent: 5,
                      endIndent: 1,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Abubakar",
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Happy Mart 123 Main Street,\n Palarivattom (p.o),\n Ernamkulam, Kerala,PIN: 682017',
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline_rounded,
                  color: appcolor,
                  size: 20,
                ),
                label: Text(
                  'Add New Address',
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16.sp, // ScreenUtil applied here
                    fontWeight: FontWeight.w600,
                    color: appcolor,
                  ),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  @override
  AddressViewModel viewModelBuilder(BuildContext context) => AddressViewModel();
}
