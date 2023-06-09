import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = Color(0xffFC4F00);
Color secondaryColor = Color(0xff38ABBE);
Color alertColor = Color(0xffED6363);
Color alertSuccesColor = Colors.green;
Color priceColor = Color(0xff2C96F1);
// Color backgroundColor1 = Color(0xff1F1D2B);
Color backgroundColor1 = Color(0xffF1F0F2);
Color backgroundColor2 = Color(0xff999999);
Color backgroundColor3 = Color(0xff242231);
Color primaryTextColor = Color.fromARGB(255, 25, 24, 29);
// Color primaryTextColor = Color(0xffF1F0F2);
Color secondaryTextColor = Color(0xff999999);
Color subtitleColor = Color(0xff504F5E);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle primaryWhiteTextStyle = GoogleFonts.poppins(
  color: backgroundColor1,
);
TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);
TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);
TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
