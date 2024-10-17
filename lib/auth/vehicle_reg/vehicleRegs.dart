import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skydrive_driver/constants/colors/colors.dart';
import 'package:skydrive_driver/views/mainsection/mainsection.dart';

class VehicleRegis extends StatefulWidget {
  const VehicleRegis({super.key});

  @override
  State<VehicleRegis> createState() => _VehicleRegisState();
}

class _VehicleRegisState extends State<VehicleRegis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        title: Text(
          "Vehicle Registration",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/log.png',
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Vehicle Details",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.black54,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Gap(15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Select Service Type",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.black54,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Gap(15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Select Model",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.black54,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Gap(15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Select Zone",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.black54,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Gap(15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  border: Border.all(
                    color: Colors.black45,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Upload Vehicle Documents",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.upload,
                        color: Colors.red,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Gap(25),
              Bounce(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainSection(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: thirdColor,
                  ),
                  child: Center(
                    child: Text(
                      "Register my vehicle",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
