import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double marginDefault = 30.0;

const primaryColor = Color(0xffB6975E);
const secondaryColor = Color(0xff38ABBE);
const alertColor = Color(0xffED6363);
const priceColor = Color(0xff2C96F1);
const bgColor1 = Color(0xff1F1D2B);
const bgColor2 = Color(0xff2B2937);
const bgColor3 = Color(0xff242231);
const primaryTextColor = Color(0xffF1F0F2);
const secondartTextColor = Color(0xff999999);
const subtitleColor = Color(0xff504F5E);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondartTextColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle goldTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

const light = FontWeight.w300;
const regular = FontWeight.w400;
const medium = FontWeight.w500;
const semiBold = FontWeight.w600;
const bold = FontWeight.w700;
