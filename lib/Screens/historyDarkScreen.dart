import 'package:flutter/material.dart';
import 'package:login_ui/Screens/darkScreen2.dart';
import 'package:login_ui/Screens/lightScreen.dart';

import '../main.dart';

 final inputController = TextEditingController();
  final outputController = TextEditingController();

class HistoryDarkScreen extends StatelessWidget {
  const HistoryDarkScreen({
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Align(
                 alignment: Alignment.topLeft,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 30.0, left: 10),
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
                           Navigator.pop( context); 
                     },
                     child: Icon(
                    Icons.account_balance,
                     ),),
                     MaterialButton(
                       onPressed: (){
                          Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LightScreen()),
        );
                       },
                       child: Icon(
                         Icons.light_mode_rounded,
                       )
                     )
                   ],),
                   ),
                 ),
               ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Divider(
                              height: 10,
                              color: Colors.black
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("  "),
                            ),
                            Divider(
                              height: 10,
                              color: Colors.black
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("  "),
                            ),
                            Divider(
                              height: 10,
                              color: Colors.black
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("  "),
                            ),
                              Divider(
                              height: 10,
                              color: Colors.black
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("  "),
                            ),
                              Divider(
                              height: 10,
                              color: Colors.black
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("  "),
                            ),  
                          ],
                        ),
                      )
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.all( Radius.circular(20),),
                                  border: Border.all(color: Color(0xff24495E)),),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         WhiteButton(text: " ( ", color: Color(0xff09689D),),
                          WhiteButton(text: " ) ", color: Color(0xff09689D),),
                          WhiteButton(text: " AC ", color: Color(0xff09689D),),
                          WhiteButton(text: " / ", color: Color(0xff09689D)),
                        ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
             
             
            
            ],
          ),
          ), )  
        
               ]
            ),
        ),
      ),
    );
  }
}