import 'package:flutter/material.dart';
import 'package:image_guesser_game/screens/game.dart';
import 'package:google_fonts/google_fonts.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Stack(
        children:[
          Container(
            height:double.infinity,
        width:double.infinity,
            decoration:BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Images/image game.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                ]
              )
            ),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text("Image Guesser",
                style: GoogleFonts.aldrich(fontSize: 40,color:Colors.white),),
              SizedBox(
                height: 10,
              ),
              Text("...The Game You Love",style: TextStyle(fontSize: 20,color:Colors.white),),
              SizedBox(
                height: 50,
              )
            ],),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                    MaterialStateProperty.all(Color(0xff007B82)),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Game(),));
                },
                child: Text(
                  "Start",
                  style: GoogleFonts.alef(fontSize: 25, color: Colors.purple),
                ),
              ),
            ),
          )
        ]
      )


      );

  }
}
