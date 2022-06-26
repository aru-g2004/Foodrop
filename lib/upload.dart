import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'HexColor.dart';

class upload extends StatefulWidget {
  const upload({Key? key}) : super(key: key);

  @override
  _uploadState createState() => _uploadState();
}

class _uploadState extends State<upload> {
  @override

  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushNamed(context, '/subConfirm');
    });
    return Container(
      //color: HexColor.fromHex('#4CA8F0'),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.ibb.co/fnb8rRK/Why-become-a-Foodropper-6.png'),
            fit: BoxFit.cover,
          )),
      child:
          Column(
            children: [
              SizedBox(
                height: 500,
              ),

              SizedBox(
                height: 100,
                child: FlatButton(
                  color: Colors.transparent,
    onPressed: () async {
      final results = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg'],
      );
      if (results == null) {

      }
    }, child: Text(""),)),


           ],


          ),

    );
  }
}
