import 'dart:ui';

import 'package:flutter/material.dart';
void main(){
  runApp(const MYApp());
}
class MYApp extends StatelessWidget {
  const MYApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradien Sample"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff654ea3),
                    Color(0xffeaafc8),



                  ]

              )
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff7F7FD5),
              Color(0xff86A8E7),
              Color(0xff91EAE4)

            ]

          )
        ),
        child: Center(

            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2,color: Colors.white30)
              ),
              margin:const  EdgeInsets.symmetric(horizontal: 20),
              height: 400,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center  ,
                 children: [
                   ShaderMask(
                     blendMode: BlendMode.srcIn,

                       shaderCallback: (rect) {
                        return LinearGradient(
                             begin: Alignment.centerLeft,
                             end: Alignment.centerRight ,
                             colors: [
                               Color(0xff43C6AC),
                               Color(0xff191654)
                               ]

                         ).createShader(rect);
                       },
                       child: const Text("GRADIENT TEXT",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                  const  SizedBox(height: 50,),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                         gradient: LinearGradient(
                             begin: Alignment.bottomLeft,
                             end: Alignment.topRight,
                             colors: [
                               Color(0xff7F7FD5),
                               Color(0xff86A8E7),
                               Color(0xff91EAE4)

                             ]

                         )
                     ),
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                      
                         padding:const  EdgeInsets.symmetric(horizontal: 60,vertical: 20),
                         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                         shadowColor: Colors.transparent,
                         primary: Colors.transparent,
                       ),
                         onPressed: (){}, child:const  Text("Button")),
                   )
                 ],
               ),

            ),
          ),
        ),

    );
  }
}

