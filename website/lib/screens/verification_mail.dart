import 'package:flutter/material.dart';
import 'package:website/screens/otp/otp.dart';
import 'package:website/screens/passwd.dart';

// ignore: must_be_immutable
class Verificationmail extends StatelessWidget {
  Verificationmail({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController collegeController = TextEditingController();

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
                height: 215,
              ),
              Container(
                child: const Row(
                  children: [
                    SizedBox(
                      width: 1050,
                    ),
                    Text(
                      "Enter email to request otp",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
                left: 1050, top: 285, right: 80), // Adjusted right padding
            child: Container(
              width: screenWidth * 2 / 5 - 50, // Adjusted width
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter your Email",
                  prefixIcon: const Icon(Icons.mail, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1050, top: 365, right: 80),
            child: SizedBox(
              height: 45.0, // Adjusted height
              width: screenWidth * 2 / 5 - 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Otp()),
                  ); // Handle the button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Request otp',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
