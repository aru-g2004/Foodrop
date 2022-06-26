import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HexColor.dart';
import 'main.dart';


class why extends StatefulWidget {
  const why({Key? key}) : super(key: key);

  @override
  _whyState createState() => _whyState();
}

class _whyState extends State<why> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('BAE2FF'),

child:

CarouselSlider(
  options: CarouselOptions(
    initialPage: 0,
    height: MediaQuery.of(context).size.height,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlayInterval: const Duration(seconds: 10),
    autoPlay: true,
    enlargeCenterPage: true,
    autoPlayCurve: Curves.decelerate,
    scrollDirection: Axis.horizontal,
  ),
  items: [
   image('https://i.ibb.co/8NXNNZt/1.png'),
     image('https://i.ibb.co/HYZQZqm/2.png'
     ),
    image('https://i.ibb.co/mSrdpBD/3.png'
    ),
    image('https://i.ibb.co/BV8tjhs/4.png'

    ),
    image('https://i.ibb.co/G9xtkYd/5.png'),

    Center(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        color:HexColor.fromHex('A9BAEF') ,
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, '/login');

          },
          child: Text("Become a Foodropper today!", style: Page1style(20)),

        ),
      ),
    )
]
)



    );
  }
}

TextStyle Page1style(double size)
{
  return GoogleFonts.raleway(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: size);

}
TextStyle style(double size)
{
  return GoogleFonts.cabin(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: size);

}
