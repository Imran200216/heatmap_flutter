import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heatmap_flutter/components/custom_heat_map.dart';
import 'package:heatmap_flutter/components/custom_reusable_data_details.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFF13131B),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 22,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Hours worked",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Color(0xFF7D7E95),
                              size: 26,
                            ),
                          )
                        ],
                      ),
                      Text(
                        "The measurement of actual hours of work",
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF6F7387),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      /// heat map content
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomHeatMap(),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomReusableDataDetails(
                                workingDayDetails: "This month",
                                workingDetails: "123h 49m",
                                iconColor: Color(0xFF119447),
                                percentTextColor: Color(0xFF119447),
                                iconBgColor: Color(0xFF013916),
                                icon: Icons.arrow_upward,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              CustomReusableDataDetails(
                                workingDayDetails: "This week",
                                workingDetails: "43h 49m",
                                iconColor: Color(0xFFEE3031),
                                percentTextColor: Color(0xFFEE3031),
                                iconBgColor: Color(0xFF520504),
                                icon: Icons.arrow_downward,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
