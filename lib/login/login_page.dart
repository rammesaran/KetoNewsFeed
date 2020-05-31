import 'package:crowd_fund_newsfeed/homepage/home_page.dart';
import 'package:crowd_fund_newsfeed/shared/components/container_fluid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController myController = TextEditingController();
  bool isButtonEnabled = false;

  bool isEmpty() {
    setState(() {
      if (myController.text != "") {
        isButtonEnabled = true;
      } else {
        isButtonEnabled = false;
      }
    });
    return isButtonEnabled;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Image.asset(name)
                ContainerFluid(
                 
                  child: Image.asset('assets/images/image.png'),
                ),
                ContainerFluid(
                
                  child: Text(
                    "Welcome to \nHealthNest",
                   style: 
                      GoogleFonts.inter(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Color(0xff545B63),
                      ),
                    ),
            
                     
                    ),
          
                ContainerFluid(
                  
                  child: TextField(
                    keyboardType: TextInputType.number,
                   // onSubmitted: null,
                    controller: myController,
                    onChanged: (String value) {
                      isEmpty();
                      print(value);
                    },
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(

                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Enter Mobile Number",
                        icon: Image.asset('assets/images/IN.png'),
                        suffixIcon: Icon(
                          Icons.call,
                          color: Colors.grey,
                        )),
                  ),
                ),
                ContainerFluid(
                 
                  child: Text(
                    "We never compromise on security! \n Help us create a safe place by providing your mobile number to maintain authenticity",
                    style: TextStyle(
                         fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        color: Color(0xffA5B1C2),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    
                      child: FlatButton(

                        disabledColor: Colors.grey,
                          padding: EdgeInsets.all(20.0),
                          color: Color(0xff00A981),
                          textColor: Colors.white,
                          onPressed: isButtonEnabled ?(){
                            print('button enabled');
                           Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
                           ),);
                          } : null,
                          child: Text("Send OTP"))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
