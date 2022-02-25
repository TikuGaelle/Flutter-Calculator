import 'package:flutter/material.dart';

import '../main.dart';
import 'darkscreen.dart';
import 'lightScreen2.dart';

class LightScreen extends StatelessWidget {
  const LightScreen({
    Key? key,
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
           color: Color(0xffE5E5E5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
               TextField(
                  
                 textAlign: TextAlign.right,
                  controller: myInputController,
          decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          hintText: "0"),
         
          ),
              SizedBox(
              height: 20
              ),
              TextField( 
                textAlign: TextAlign.right,
                controller: myOutputController,
          decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          hintText: " "),
        ), 
           Column( 
        children: [ 
         
           Align(
        alignment: Alignment.bottomCenter,
        child: Container( 
           decoration: BoxDecoration(
                border: Border.all(color: Color(0xff24495E)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                color: Color(0xffF1F2F3),
                ),
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Container(
                           height: 30,
                           width: 300,
                           decoration: BoxDecoration( 
                            borderRadius: BorderRadius.all(Radius.circular(20),),
                            color: Color(0xffDCDDDE),
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                             MaterialButton(onPressed: () {
                  
                             },
                             child: Text("History"),
                             ),
                             MaterialButton(onPressed: () {
                                  Navigator.push(
                                    context,
        MaterialPageRoute(builder: (context) => const LightScreen2()),
        );
                             },
                             child: Icon(
                    Icons.account_balance,
                             ),),
                             MaterialButton(onPressed: () {
                                    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DarkScreen()),
        );
                             },
                             child: Icon(
                    Icons.dark_mode_rounded,
                             ),)
                           ],),
                           ),
                         ),
               ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 WhiteButton(text: " ( ", color: Color(0xffEBF8FF),),
                  WhiteButton(text: " ) ", color: Color(0xffEBF8FF),),
                  WhiteButton(text: " AC ", color: Color(0xffEBF8FF),),
                  WhiteButton(text: " / ", color: Color(0xff09689D)),
                ],
              ),
          ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     WhiteButton(text: " 7 ", color: Colors.white,),
                  WhiteButton(text: " 8 ", color: Colors.white,),
                  WhiteButton(text: " 9 ", color: Colors.white,),
                  WhiteButton(text: " x ", color: Color(0xff09689D)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteButton(text: " 4 ", color: Colors.white,),
                  WhiteButton(text: " 5 ", color: Colors.white,),
                  WhiteButton(text: " 6 ", color: Colors.white,),
                  WhiteButton(text: " + ", color: Color(0xff09689D)),
                ],
              ),
          ),
             Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteButton(text: " 1 ", color: Colors.white,),
                  WhiteButton(text: " 2 ", color: Colors.white,),
                  WhiteButton(text: " 3 ", color: Colors.white,),
                  WhiteButton(text: " - ", color: Color(0xff09689D)),
                ],
              ),
             ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteButton(text: " 0 ", color: Colors.white,),
                  WhiteButton(text: " . ", color: Colors.white,),
                  WhiteButton(text: " DEL ", color: Colors.white,),
                  WhiteButton(text: " = ", color: Color(0xff09689D)),
                ],
              ),),
            ],
          ),
          ), )  
        ] ) 
               ]
            ),
        ),
      ),
    );
  }
}