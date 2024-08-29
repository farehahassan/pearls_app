import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pearls_app/utils/constants/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: 0.sp,
            child: headerPart(),
          ),
          Positioned(
            child: Column(
              children: [],
            ),
          ),
        ],
      )),
    );
  }

  Widget headerPart() {
    return Container(
      height: 50.h,
      // width: double.infinity.w,
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
}
