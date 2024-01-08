import 'package:flutter/material.dart';
import 'package:website/screens/landing_screen.dart';
import 'package:website/screens/passwd.dart';

// ignore: must_be_immutable
class Otp extends StatelessWidget {
  Otp({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth * 3 / 5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/dj.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 3 / 5,
            child: Container(
              width: screenWidth * 2 / 5,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 260,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 260),
                    Container(
                      height: 120,
                      width: 320,
                      child: Image(
                        image: AssetImage("assets/dash.png"),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 170,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 1050,
                    ),
                    Text(
                      "We sent you code",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 36.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Column(
            children: [
              SizedBox(
                height: 225,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 1050,
                  ),
                  Text(
                    "Please enter the code below",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
                left: 980, top: 275, right: 80), // Adjusted right padding
            child: Container(
              width: screenWidth * 2 / 5 - 50, // Adjusted width
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter OTP",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 980, top: 375, right: 80),
            child: Container(
              height: 45.0, // Adjusted height
              width: screenWidth * 2 / 5 - 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Passwd()),
                  ); // Handle the button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 850, top: 510),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10.0), color: Colors.red),
          //     width: 445.0,
          //     height: 45.0,
          //   ),
          // ),
          Column(
            children: [
              SizedBox(
                height: 450.0,
              ),
              Row(
                children: [
                  SizedBox(width: 1050),
                  Text(
                    "Haven't reiceved the code yet?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Lpage()),
                      // );
                    },
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
