import 'package:flutter/material.dart';
import 'package:login_ui/Screens/lightScreen2.dart';

import '../main.dart';
import 'darkscreen.dart';

class DarkScreen2 extends StatelessWidget {
  const DarkScreen2({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('images/img1.png'),
            fit: BoxFit.cover,
          ),
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20),),
                color: Color(0xffE5E5E5),
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
                            color: Colors.white,
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
        MaterialPageRoute(builder: (context) => const DarkScreen()),
        );
                             },
                             child: Icon(
                    Icons.account_balance,
                             ),),
                             MaterialButton(
                               onPressed: (){
                                  Navigator.push(
                                    context,
        MaterialPageRoute(builder: (context) => const LightScreen2()),
        );
                               },
                               child: Icon(
                                 Icons.light_mode_outlined,
                               )
                             )
                           ],),
                           ),
                         ),
               ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 WhiteButton(text: " CALC ", color: Color(0xffEBF8FF),),
                  WhiteButton(text: " INT ", color: Color(0xffEBF8FF),),
                  WhiteButton(text: " X^-1 ", color: Color(0xffEBF8FF),),
                  WhiteButton(text: " X^3 ", color: Colors.white),
                ],
              ),
          ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     WhiteButton(text: " a^(b/c) ", color: Colors.white,),
                  WhiteButton(text: " SQRT ", color: Colors.white,),
                  WhiteButton(text: " X^2 ", color: Colors.white,),
                  WhiteButton(text: " ^ ", color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteButton(text: " log ", color: Colors.white,),
                  WhiteButton(text: " ln ", color: Colors.white,),
                  WhiteButton(text: " (-) ", color: Colors.white,),
                  WhiteButton(text: " hyp ", color: Colors.white),
                ],
              ),
          ),
             Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteButton(text: " hyp ", color: Colors.white,),
                  WhiteButton(text: " sin ", color: Colors.white,),
                  WhiteButton(text: " cos ", color: Colors.white,),
                  WhiteButton(text: " tan ", color: Colors.white),
                ],
              ),
             ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WhiteButton(text: " RCL ", color: Colors.white,),
                  WhiteButton(text: " Eng ", color: Colors.white,),
                  WhiteButton(text: " Exp ", color: Colors.white,),
                  WhiteButton(text: " M+ ", color: Colors.white),
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