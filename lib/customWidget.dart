// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:pec_02/gameLogic.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cardsContainer(double height, double width, String card) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Container(
      child: Image.asset(card),
      height: height,
      width: width,
    ),
  );
}

Widget guessCardContainer(double height, double width) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Container(
      child: FlipCard(
        controller: controller,
        front: Image.asset(back),
        back: Image.asset(guessCard),
        flipOnTouch: false,
      ),
      height: height,
      width: width,
    ),
  );
}

Widget miniBoxDisplayChoice() {
  return Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        child: Center(
          child: Text(
            answer,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        color: Color.fromARGB(255, 198, 128, 128),
        height: 40,
        width: 40,
      ),
    ),
  );
}

TextStyle scoreTextStyle = GoogleFonts.almendraSc(
  fontSize: 40,
  color: Color.fromARGB(255, 232, 107, 107),
  shadows: [
    BoxShadow(
      color: Color.fromARGB(255, 212, 92, 234),
      spreadRadius: 2,
      blurRadius: 8,
      offset: Offset(4, 4),
    ),
  ],
);

Widget btn(double height, double width, String btnText) {
  return Container(
    child: Center(
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 63, 23, 23),
        ),
      ),
    ),
    height: height,
    width: width * .2,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 197, 188, 68),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 42, 108, 193),
          spreadRadius: 1,
          blurRadius: 8,
          offset: Offset(4, 4),
        ),
        BoxShadow(
          color: Color.fromARGB(255, 45, 181, 186),
          spreadRadius: 2,
          blurRadius: 8,
          offset: Offset(-4, -4),
        ),
      ],
    ),
  );
}
