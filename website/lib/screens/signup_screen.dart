import 'package:flutter/material.dart';
import 'package:website/dashboard/admin_dashboard.dart';
import 'package:website/screens/Auth.dart';
import 'package:website/screens/otp/otp.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth * 3 / 5,
            decoration: const BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          Positioned(
            left: screenWidth * 3 / 5,
            child: Container(
              width: screenWidth * 2 / 5,
              color: Colors.white,
            ),
          ),
          const Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(width: 1050),
                  SizedBox(
                    height: 120,
                    width: 320,
                    child: Image(
                      image: AssetImage("assets/logo.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
          const Column(
            children: [
              SizedBox(
                height: 210,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 1050,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 28.0,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "to host your event",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.only(left: 950, top: 255, right: 50),
            child: SizedBox(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: const Icon(Icons.person, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 950, top: 320, right: 50),
            child: SizedBox(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  prefixIcon: const Icon(Icons.mail, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color.fromRGBO(200, 200, 200, 1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 950, top: 385, right: 50),
            child: SizedBox(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: const Icon(Icons.phone, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 950, top: 450, right: 50),
            child: SizedBox(
              width: screenWidth * 2 / 5 - 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "College Name",
                  prefixIcon: const Icon(Icons.school, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 950, top: 570, right: 50),
            child: SizedBox(
              height: 50.0,
              width: screenWidth * 2 / 5 - 50,
              child: ElevatedButton(
                onPressed: () {
                  // Perform any signup logic here

                  // After signup, navigate to the AuthScreen1 (Login) screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Otp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 635.0,
              ),
              Row(
                children: [
                  const SizedBox(width: 1050),
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigate to login page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthScreen1()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
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

void main() {
  runApp(const MaterialApp(
    home: SignupPage(),
  ));
}
