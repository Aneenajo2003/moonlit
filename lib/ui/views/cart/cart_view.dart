import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../cards/cartss/cartitem.dart';

import '../../cards/cartss/pricedetails.dart';
import '../../common/app_colors.dart';
import 'cart_viewmodel.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewModel>.reactive(
      viewModelBuilder: () => CartViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back_ios_new,
              color: appcolor,
              size: 20.sp, // Responsive icon size
            ),
            centerTitle: true,
            title: Text(
              "Cart",
              style: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 20.sp, // Responsive font size
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            actions: [
              InkWell(
                child: Icon(
                  Icons.search_outlined,
                  color: appcolor,
                  size: 25.sp, // Responsive icon size
                ),
                onTap: () {
                  // Implement search functionality here
                },
              ),
              SizedBox(width: 15.w), // Responsive spacing
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: viewModel.goto,
                        child: CartItem(
                          imageUrl: 'assets/images/img_17.png',
                          title: 'Black Mamba Round \n Chandelier',
                          size: '16 Inch[400mm]',
                          price: 'RS.26,000/-',
                          bulb: 'With Bulb',
                        ),
                      ),
                      _buildDivider(),
                      CartItem(
                        imageUrl: 'assets/images/img_18.png',
                        title: 'Outdoor Wall Light HL-301',
                        size: '14 Inch[355mm]',
                        price: 'RS.3,300/-',
                        bulb: 'With Bulb',
                      ),
                      _buildDivider(),
                      CartItem(
                        imageUrl: 'assets/images/img_19.png',
                        title: 'Lotus Emerald Chandelier',
                        size: '24 Inch[610mm]',
                        price: 'RS.40,000/-',
                        bulb: 'With Bulb',
                      ),
                      _buildDivider(),
                      PriceDetails(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1.h, // Responsive height
      thickness: 1.h, // Responsive thickness
      color: Colors.grey, // Adjust color as needed
      // Responsive end indent
    );
  }
}
