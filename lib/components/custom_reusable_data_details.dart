import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomReusableDataDetails extends StatelessWidget {
  final String workingDayDetails;
  final String workingDetails;
  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;
  final Color percentTextColor;

  const CustomReusableDataDetails({
    super.key,
    required this.workingDetails,
    required this.iconColor,
    required this.percentTextColor,
    required this.iconBgColor,
    required this.icon,
    required this.workingDayDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                workingDetails,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6F7387),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                workingDetails,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconBgColor,
                    ),
                    child: Center(
                      child: Icon(
                        size: 20,
                        icon,
                        color: iconColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "23%",
                    style: GoogleFonts.poppins(
                      color: percentTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
