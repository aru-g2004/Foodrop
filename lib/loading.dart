import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodrop/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'package:carousel_slider/carousel_slider.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 15), () {
      Navigator.pushNamed(context, '/why');
    });

    List<String> list = [
      "Ready to help the community?", "Welcome to Foodrop!",
      "Thank you for helping us!"
    ];

    return Container(
      color: HexColor.fromHex('BAE2FF'),
    child: (
        Center(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150,),
  logo(250, 250),

          SizedBox(height: 50,),
    Text(
    'Foodrop',
    maxLines: 1,
    style: GoogleFonts.raleway(
    decoration: TextDecoration.none,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 45,
    )
    ),
          SizedBox(height: 50,),
          SizedBox(
    height: 15,
    width: 150,
    child: LinearProgressIndicator(
    backgroundColor:HexColor.fromHex('C2BBF0'),
    valueColor: AlwaysStoppedAnimation<Color>(HexColor.fromHex('#8D84C4'),),

    ),
    ),
     SizedBox(
       height: 200,

       child: Opacity( //Wrap any widget with Opacity()
        opacity: 1, //from 0-1, 0.5 = 50% opacity
        child: CarouselSlider(
        options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2)
        ),
        items: list
            .map((item) => Container(
        child: Center(child: Text(item, style: GoogleFonts.raleway(
        decoration: TextDecoration.none,
        color: Colors.black,
        fontSize: 15
        ))),

        ))
            .toList(),
        )),
     ),

    ],
    ),
    )));
  }
}
