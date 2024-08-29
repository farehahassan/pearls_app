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
  List<String> settings = [
    "Company",
    "Service",
    "Platform",
    "Industries",
    "Insights",
    "Careers",
  ];
  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        backgroundColor: black,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 10.sp,
          ),
          child: SvgPicture.asset(
            "assets/svgs/10P-Logo.svg",
            color: white,
            width: 120.w,
          ),
        ),
        leadingWidth: 120.w,
        actions: [
          Icon(
            Icons.search,
            color: white,
            size: 30.sp,
          ),
          SizedBox(
            width: 20.w,
          ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
                color: white,
              ), // Hamburger icon to open drawer
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); // Open the drawer when tapped
              },
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      drawer: Drawer(
        surfaceTintColor: black,
        shadowColor: black,
        width: double.infinity.w,
        backgroundColor: Color.fromARGB(90, 0, 0, 0),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.sp,
          ),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // padding: EdgeInsets.zero,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                ...List.generate(6, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.sp,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          settings[index],
                          style: GoogleFonts.montserrat(
                            fontSize: 20.sp,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: white,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  );
                })
              ]),
        ),
      ),
      backgroundColor: black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // headerPart(),
              heroSection(),
              connectButton(),
              newsCard(),
              secondPart(),
              thirdPart(),
              fourthPart(),
              caseStudiesPart(),
              awardsPart(),
              footerPart(),
            ],
          ),
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
            fontSize: 14.sp,
            color: white,
          ),
        ),
      ),
    );
  }

  Widget newsCard() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.sp,
        vertical: 30.sp,
      ),
      width: double.infinity.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
      child: Center(
        child: Text(
          "News Part",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: white,
          ),
        ),
      ),
    );
  }

  Widget secondPart() {
    return Container(
      margin: EdgeInsets.only(top: 40.sp),
      height: 900.h,
      width: double.infinity.w,
      color: white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 60.sp,
          horizontal: 40.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You are in great company",
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  buildPage('assets/images/logo.png'),
                  buildPage('assets/images/logo.png'),
                  buildPage('assets/images/logo.png'),
                  buildPage('assets/images/logo.png'),
                  buildPage('assets/images/logo.png'),
                ],
              ),
            ),
            // Page Indicator
            Padding(
              padding: const EdgeInsets.all(00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return buildIndicator(index == _currentPage);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String imagePath) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70.h,
          ),
          Image.asset(
            imagePath,
            // height: 100,
            // width: 100,
            fit: BoxFit.cover,
          ), // Replace with Icon if needed
          SizedBox(height: 20),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ), // Replace with Icon if needed
          SizedBox(height: 20),
          // SizedBox(height: 10),

          Image.asset(
            imagePath,
            // height: 100,
            // width: 100,
            fit: BoxFit.cover,
          ), // Replace with Icon if needed
          SizedBox(height: 20),
          // SizedBox(height: 10),

          Image.asset(
            imagePath,
            // height: 100,
            // width: 100,
            fit: BoxFit.cover,
          ), // Replace with Icon if needed
          SizedBox(height: 20),
          // SizedBox(height: 10),

          Image.asset(
            imagePath,
            // height: 100, width: 100,
            fit: BoxFit.cover,
          ), // Replace with Icon if needed
          SizedBox(height: 20),
          // SizedBox(height: 10),

          // Text(
          Image.asset(
            imagePath,
            // height: 100, width: 100,
            fit: BoxFit.cover,
          ), // Replace with Icon if needed
          SizedBox(height: 20),
          // SizedBox(height: 10),

          // Text(
          //   title,
          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: isSelected ? 20 : 10,
      height: isSelected ? 20 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    );
  }

  Widget thirdPart() {
    return Container(
      width: double.infinity.w,
      // height: 600.h,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.sp,
            ),
            child: Text(
              "Global team of creators and innovators",
              style: GoogleFonts.montserrat(
                height: 2.sp,
                fontSize: 20.sp,
                color: black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Image.asset(
            "assets/images/mobile-bg.png",
            width: double.infinity.w,
            height: 200.h,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Our super heros",
                  style: GoogleFonts.montserrat(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: black),
                ),
                SizedBox(
                  height: 40.h,
                ),
                headingParts(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget headingParts() {
    List<String> headings = [
      "Industry Expertise",
      "Expert in AI",
      "Delivery Excellence",
      "Global presence",
      "Product mindset",
      "Security Implentation",
    ];

    List<String> subtext = [
      "We bring relevancy and context to problem solving. Our domain experts leverage deep industry knowledge to identify and implement the most effective solution to address your business challenges.",
      "AI is embedded in everything we do. We help your businesses unlock their potential via AI and advanced technologies to future-proof your business. Our AI Launchpad gets you from idea to POC in 90 days.",
      "We get sh*t done. Our deep technical expertise, along with our focus on agile, high-velocity delivery ensures customer satisfaction.",
      "1,300+ experts across 4 continents. Our delivery teams in Latin America, North America, Asia and Europe allow us to serve as a global digital transformation partner to businesses looking to scale and innovate with efficiency.",
      "We focus on delivering true value. Our teams invest the time to understand the business goals of your product, allowing us to deliver outcomes vs outputs. This provides not just direction but a sense of ownership to our development teams.",
      "We treat security as a first-class citizen. We are experts at addressing the unique challenges of regulated industries and their stringent regulatory and compliance requirements. Our customers span healthcare, financial services, telecom, energy and more.",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        headings.length,
        (index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headings[index],
                style: GoogleFonts.montserrat(
                    fontSize: 20.sp, fontWeight: FontWeight.w600, color: black),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                subtext[index],
                style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: black,
                  height: 2.sp,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget fourthPart() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.sp,
        vertical: 40.sp,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Insigts",
            style: GoogleFonts.montserrat(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xffc77ff17),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          insigtsCard(),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }

  Widget insigtsCard() {
    return Container(
      width: 300.w,
      height: 650.h,
      color: Color(0xff242424),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/mobile-bg.png",
            width: 300.w,
            height: 400.h,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Text(
              "ARTIFICIAL INTELLIGANCE",
              style: GoogleFonts.montserrat(
                fontSize: 12.sp,
                // color: const Color(0xffc77ff17),
                color: white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.sp,
            ),
            child: Text(
              "Putting GENAI to Work for Legacy System Monitization",
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                height: 1.5.sp,
                color: const Color(0xffc77ff17),
                // color: white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Read more",
                  style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    // color: const Color(0xffc77ff17),

                    color: white,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xffc77ff17),
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget caseStudiesPart() {
    List<String> firstName = [
      "Health Care",
      "Energy",
      "AI",
      "FinTech",
    ];
    List<String> secondName = [
      "AmWell",
      "BboXx",
      "Related Faces",
      "PayPal",
    ];
    return Container(
      width: double.infinity.w,
      // height: 700.h,
      color: white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 40.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Case Studies",
              style: GoogleFonts.montserrat(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: black,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "We are problem solvers. We help businesses think through challenges and reach their desired outcomes with efficiency and creativity.",
              style: GoogleFonts.montserrat(
                fontSize: 19.sp,
                height: 1.5.sp,
                color: black,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ...List.generate(
              4,
              (index) => caseStudyCard(firstName[index], secondName[index]),
            ),
          ],
        ),
      ),
    );
  }

  Widget caseStudyCard(
    String firstName,
    String secondName,
  ) {
    return Container(
      width: double.infinity.w,
      height: 300.h,
      margin: EdgeInsets.only(
        bottom: 20.sp,
      ),
      decoration: BoxDecoration(
        color: black,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/mobile-bg.png",
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0.sp,
            child: Container(
              // alignment: Alignment.bottomCenter,
              width: 370.w,
              height: 120.h,
              // color: blue,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.sp,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstName,
                      style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        color: white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      secondName,
                      style: GoogleFonts.montserrat(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffc77ff17),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget awardsPart() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 40.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Awards & Recognition",
            style: GoogleFonts.montserrat(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xffc77ff17),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          ...List.generate(
            growable: true,
            3,
            (index) => awardsCard(),
          ),
          // awardsCard(),
        ],
      ),
    );
  }

  Widget awardsCard() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 60.sp,
          ),
          width: 350.w,
          padding: EdgeInsets.all(16.0.sp),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.white,
              width: 1.w,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ), // Space for the icon
              Text(
                'EY announced Imran Aftab as an Entrepreneur of The Year® 2022 Mid-Atlantic Award Winner',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  height: 2.sp,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  // Handle click event
                },
                child: Text(
                  'Learn more',
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -15.sp, // Position the logo on top
          left: 20.sp,
          child: Container(
            color: black,
            child: SvgPicture.asset(
              "assets/svgs/10P-Logo.svg",
              width: 100.w,
              color: white,
            ),
          ),
        ),
      ],
    );
  }

  Widget footerPart() {
    return Container(
      width: double.infinity.w,
      // height: 900.h,
      color: Color(0xff242424),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 30.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              "assets/svgs/10P-Logo.svg",
              color: white,
              width: 150.w,
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "10Pearls is an award-winning digital development company, helping businesses with product design, development, and technology acceleration.",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: white,
                height: 2.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(),
            SizedBox(
              height: 20.h,
            ),
            links(),
            SizedBox(
              height: 20.h,
            ),
            Divider(),
            SizedBox(
              height: 20.sp,
            ),
            belowlinks(),
            SizedBox(
              height: 20.h,
            ),
            Divider(),
            SizedBox(
              height: 20.sp,
            ),
            contactDetails(),
          ],
        ),
      ),
    );
  }

  Widget links() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Company",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
            // SizedBox(
            //   width: 100.w,
            // ),
            Text(
              "Insigts",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Services",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
            // SizedBox(
            //   width: 100.w,
            // ),
            Text(
              "Carrers",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Industries",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
            // SizedBox(
            //   width: 100.w,
            // ),
            Text(
              "Contact",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget belowlinks() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "USA(HQ in WS DC)",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
            // SizedBox(
            //   width: 100.w,
            // ),
            Text(
              "Colombia",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Costa Rita",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
            // SizedBox(
            //   width: 100.w,
            // ),
            Text(
              "Peru",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Pakistan",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
            // SizedBox(
            //   width: 100.w,
            // ),
            Text(
              "UK",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
                height: 2.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget contactDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "+925675776576",
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: white,
            height: 2.sp,
          ),
        ),
        Text(
          "info@10Pearls.com",
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: white,
            height: 2.sp,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.sp,
              height: 40.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: white,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.facebook,
                  color: white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 40.sp,
              height: 40.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: white,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.one_x_mobiledata_outlined,
                  color: white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 40.sp,
              height: 40.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: white,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.info_outline_rounded,
                  color: white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          "Privacy Policy",
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: white,
            height: 2.sp,
          ),
        ),
      ],
    );
  }
}
