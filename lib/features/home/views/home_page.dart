import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pearls_app/utils/constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Column(
          children: [
            headerPart(),
            heroSection(),
            connectButton(),
          ],
        ),
      ),
    );
  }

  Widget headerPart() {
    return Container(
      height: 50.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          SvgPicture.asset(
            "assets/svgs/10P-Logo.svg",
            color: white,
            width: 120.w,
          ),
          const Spacer(),
          Icon(
            Icons.search,
            color: white,
            size: 30.sp,
          ),
          SizedBox(
            width: 20.w,
          ),
          Icon(
            Icons.menu_rounded,
            color: white,
            size: 30.sp,
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }

  Widget heroSection() {
    return Container(
      width: double.infinity.w,
      height: 600.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/mobile-bg.png",
          ),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 400.w,
              height: 700.h,
              // color: black,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    black,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.sp,
            // top: 50.sp,
            child: Container(
              // width: 4,
              height: 250.h,
              // color: purple,
              child: heroSectionTextPart(),
            ),
          ),
        ],
      ),
    );
  }

  Widget heroSectionTextPart() {
    return Padding(
      padding: EdgeInsets.all(10.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reimagine. Deliver. Repeat",
            style: GoogleFonts.openSans(
              color: white,
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Global digital partner helping businesses\ntransform, create products and scale\nteam.",
            style: GoogleFonts.montserrat(
              color: white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              height: 1.5.sp,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "AI is embaded in everything we do.",
            style: GoogleFonts.montserrat(
              color: const Color(0xffc77ff17),
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5.sp,
              // height: 1.5.sp,
            ),
          ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     SizedBox(
          //       width: 85.sp,
          //     ),
          //     connectButton(),
          //     SizedBox(
          //       width: 10.sp,
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget connectButton() {
    return Container(
      alignment: Alignment.center,
      width: 200.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: white),
        borderRadius: BorderRadius.circular(
          10.sp,
        ),
      ),
      child: Center(
        child: Text(
          "Let's Connect",
          style: GoogleFonts.montserrat(
            fontSize: 16.sp,
            color: white,
          ),
        ),
      ),
    );
  }
}
