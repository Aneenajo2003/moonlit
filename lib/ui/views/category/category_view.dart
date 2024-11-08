import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlight_final/ui/cards/category/secondline.dart';
import 'package:moonlight_final/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import '../../cards/category/categoryclass.dart';
import '../../cards/category/thirdline.dart';
import 'category_viewmodel.dart';

class CategoryView extends StackedView<CategoryViewModel> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoryViewModel viewModel,
    Widget? child,
  ) {
    // Initialize ScreenUtil

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: appcolor,
          size: 20.sp, // ScreenUtil applied here
        ),
        centerTitle: true,
        title: Text(
          "CATEGORY",
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 20.sp, // ScreenUtil applied here
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.search_outlined,
              color: appcolor,
              size: 25.sp, // ScreenUtil applied here
            ),
            onTap: () {
              // viewModel.navigateToDetails();
              // Implement search functionality here
            },
          ),
          SizedBox(width: 15.w), // ScreenUtil applied here
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: appcolor,
                height: 50.h, // ScreenUtil applied here
                child: Center(
                  child: Text(
                    'Home Decor',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 18.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.h), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Categoryfitem(
                      imagePath: 'assets/images/img_11.png',
                      title: 'Hanging Lights',
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 10.h,
              ), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategorySec(
                      imagePath: 'assets/images/img_12.png',
                      title: 'Wall Lights',
                    ),
                    CategorySec(
                      imagePath: 'assets/images/img_13.png',
                      title: 'Lamps',
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 10.h), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Categoryfinal(
                      imagePath1: 'assets/images/img_14.png',
                      imagePath2: 'assets/images/img_15.png',
                      title1: 'Mirror Lights',
                      title2: 'Fairy Lights',
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 10.h), // Reduced space between widgets
              Container(
                color: appcolor,
                height: 50.h, // ScreenUtil applied here
                child: Center(
                  child: Text(
                    'Chandelier',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 18.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.h), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Categoryfitem(
                      imagePath: 'assets/images/img_16.png',
                      title: 'Fairy Lights',
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CategoryViewModel viewModelBuilder(BuildContext context) =>
      CategoryViewModel();
}
