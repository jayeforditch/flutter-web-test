import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_test/components/layout/two_col_layout.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Widget buildLeft() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Start crushing debt with DebtGift',
          style: GoogleFonts.raleway(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 50),
        Text(
          'Enter your phone number to continue',
          style: GoogleFonts.raleway(
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget buildRight() {
    return Expanded(
        child: Image.asset(
      'image1.jpg',
      fit: BoxFit.contain,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return TwoColLayout(left: buildLeft(), right: buildRight());
  }
}
