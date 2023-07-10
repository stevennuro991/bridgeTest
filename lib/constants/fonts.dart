import 'package:bridge/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appBarFont = GoogleFonts.nunitoSans(
  fontSize: 20,
  color: whiteColor,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.3
);

TextStyle dashboardFont = GoogleFonts.nunitoSans(
  color: whiteColor,
  fontSize: 16,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.3,
  fontStyle: FontStyle.normal
);

TextStyle incomeTitleFont= GoogleFonts.nunitoSans(
fontSize: 18,
color: whiteColor
);



TextStyle dashboardTitleFont = GoogleFonts.nunitoSans(
fontSize: 18,
color: dashboardTitleColor
);



TextStyle dashboardContextFont = GoogleFonts.nunitoSans(
fontSize: 13,
color: dashboardTitleColor,fontStyle: FontStyle.normal,
fontWeight: FontWeight.w400,
letterSpacing: 0.767
);

TextStyle dashboardDeepContextFont = GoogleFonts.nunitoSans(
fontSize: 13,
color: dashboardTitleColor,fontStyle: FontStyle.normal,
fontWeight: FontWeight.w700,
letterSpacing: 0.767
);



TextStyle dashboardSubtitleFont = GoogleFonts.nunitoSans(
fontSize: 14,
color: dashboardTitleColor
);

TextStyle dashboardCardHeadingFont = GoogleFonts.nunitoSans(
fontSize: 16,
color: dashboardCardHeadingTextColor,fontStyle: FontStyle.normal,fontWeight: FontWeight.w600,letterSpacing: 0.8
);