import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:foodrop/why.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'main.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override


  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  Widget build(BuildContext context) {
    return Container(
      color: HexColor.fromHex('BAE2FF'),

 child:
      Column(
        children: [
          SizedBox(height: 100,),
          logo(200, 200),
          SizedBox(height: 20,),
          Text(
              'Foodrop',
              maxLines: 1,
              style: GoogleFonts.raleway(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35
              )
          ),
          SizedBox(height: 40,),
      SizedBox(
        height: 350,
        width: 300,
        child: Card(
         color: HexColor.fromHex('#A9BAEF'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(

            children: [
              SizedBox(height: 40,),
              Text('Create an account!', style: Page1style(20),),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  color:HexColor.fromHex('BAE2FF') ,
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/loggedIn');

                    },
                    child: Text("login", style: Page1style(20)),

                  ),
                ),
              )
            ],
          ),


        ),
      )





        ],









      ),





    );
  }
}



