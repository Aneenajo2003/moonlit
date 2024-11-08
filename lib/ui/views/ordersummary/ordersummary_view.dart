import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight_final/ui/cards/ordersumm/priceorder.dart';
import 'package:stacked/stacked.dart';
import '../../cards/cartss/quntanitybuton.dart';
import '../../cards/ordersumm/order.dart';
import '../../common/app_colors.dart';
import 'ordersummary_viewmodel.dart';

class OrdersummaryView extends StackedView<OrdersummaryViewModel> {
  const OrdersummaryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OrdersummaryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
       child: Padding(
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
                           width: 90.w,
                         ),
                         SizedBox(
                           width: 66.w,
                           height: 20.h,
                           child: ElevatedButton(
                             onPressed: () {},
                             child: Text(
                               'Change',
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
                     ),
                     SizedBox(height: 20.h,),
       
                   ],
                 ),
               ),
             ),
             SizedBox(height: 20.h),
             Container(
               width: 358.w,
               height: 131.h,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 5)
                   ]),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Container(
                           height: 79.h,
                           width: 90.w,
                           decoration: BoxDecoration(
                             color: Colors.yellow,
                             borderRadius: BorderRadius.circular(10.r),
                             image: DecorationImage(
                               image: AssetImage("assets/images/img_26.png"),
                               fit: BoxFit.fill,
                             ),
                           ),
                         ),
                       ),
                          SizedBox(width: 3.w,),
                          Container(
                            height: 85.h,
                            width: 220.w,
                           //color: Colors.pinkAccent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Black Mamba Round Chandelier",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12.6.sp, // Responsive font size
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  'Chandelier | Qty : 01',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12.sp, // Responsive font size
                                    fontWeight: FontWeight.w300,
                                  ),
                                  // Handle overflow
                                ),
                                SizedBox(height: 3.h,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 80.w,
                                      height: 20.h,
                                      //color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: appcolor,
                                            size: 14.sp,
                                          ),
                                          SizedBox(width: 2.w,),
                                          Icon(Icons.star,
                                              color: appcolor, size: 14.sp),
                                          SizedBox(width: 2.w,),
       
                                          Icon(Icons.star,
                                              color: appcolor, size: 14.sp),
                                          SizedBox(width: 2.w,),
       
                                          Icon(Icons.star_half,
                                              color: appcolor, size: 14.sp),
                                          SizedBox(width: 2.w,),
       
                                          Icon(Icons.star_border,
                                              color: appcolor, size: 14.sp),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text('24 review',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w300,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 3.h),
                                Text('Rs. 26,000/-',
                                    style: GoogleFonts.montserrat(
                                      color: appcolor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
       
                              ],
                            ),
                          )
                     ],
                   ),

                   Container(
                     width: 340.w,
                     height: 33.h,
                     //color: Colors.green,
                       child: Orderquantity()),
                 ],
               ),
             ),
             SizedBox(height: 20.h,),
             Container(
               width: 358.w,
               height: 46.h,
               decoration: BoxDecoration(
                 color: Color(0xffD5E1DD),
                 borderRadius: BorderRadius.circular(10),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Expected Delivery Date",
                     style: GoogleFonts.montserrat(
                       color: Colors.black,
                       fontSize: 14.sp,
                       fontWeight: FontWeight.w300,
                     ),),
                     
                   ),
                    SizedBox(width: 15.w,),
                   Text("03 jan 2025",
                     style: GoogleFonts.montserrat(
                       color: Colors.black,
                       fontSize: 14.sp,
                       fontWeight: FontWeight.w600,
                     ),)
                 ],
               ),
       
             ),
       SizedBox(height: 15.h,),
             Priceorder()
           ],
         ),
       
       ),
     ),
    );
  }

  @override
  OrdersummaryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OrdersummaryViewModel();
}