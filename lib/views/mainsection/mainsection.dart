import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skydrive_driver/constants/colors/colors.dart';
import 'package:skydrive_driver/views/home/mainhome.dart';
import 'package:skydrive_driver/views/profile/profile_d.dart';
import 'package:skydrive_driver/views/review-list/reviews.dart';
import 'package:skydrive_driver/views/todays_booking/todaysb.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  int selectedInd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/images/map.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          IndexedStack(
            index: selectedInd,
            children: [
              MainHomeScreen(),
              // Add other screens here as needed
              ProfessionalCardScreen(), // Placeholder for the second screen
              ReviewsListScreen(), // Placeholder for the third screen
              ProfileScreen(), // Placeholder for the fourth screen
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Align(
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          30), // Adjusted to a more typical value
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2), // Adjusted position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildIcon(Icons.home, 0),
                        buildIcon(Icons.book, 1),
                        buildIcon(Icons.star, 2),
                        buildIcon(Icons.person, 3),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildIcon(IconData iconData, int index) {
    return Bounce(
      onTap: () {
        setState(() {
          selectedInd = index;
        });
      },
      child: AnimatedContainer(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(30), // Adjusted to match icon size
          color: selectedInd == index
              ? Colors.blue.withOpacity(0.3)
              : Colors.transparent,
        ),
        duration: Duration(milliseconds: 300),
        child: Icon(
          iconData,
          color: selectedInd == index ? Colors.blue : grey,
          size: selectedInd == index ? 35 : 26,
        ),
      ),
    );
  }
}
