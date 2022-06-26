import 'package:flutter/material.dart';
import 'package:foodrop/main.dart';

class submissionConfirmation extends StatefulWidget {
  const submissionConfirmation({Key? key}) : super(key: key);

  @override
  _submissionConfirmationState createState() => _submissionConfirmationState();
}

class _submissionConfirmationState extends State<submissionConfirmation> {
  @override
  Widget build(BuildContext context) {
      Future.delayed(Duration(seconds: 10), () {
        Navigator.pushNamed(context, '/vol');
      });
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.ibb.co/Cw58XYL/Why-become-a-Foodropper.jpg'),
            fit: BoxFit.cover,
          )),


      child:
      Column(
          children: [

            SizedBox(
              height: 300,
              width: 100,
            ),
           SizedBox(
               height: 300,
               width: 200,
               child: image('https://theketoqueens.com/wp-content/uploads/2019/04/IMG_9405-small.jpg'))
          ]),








    );
  }
}

