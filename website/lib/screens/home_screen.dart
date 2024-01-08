import 'package:flutter/material.dart';
import 'package:website/screens/landing_screen.dart';
import 'package:website/screens/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/a1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.1),
                    child: Row(
                      children: [
                        Text(
                          "CAMPUSS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: constraints.maxWidth * 0.04,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "BUZZ",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: constraints.maxWidth * 0.04,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const Spacer(),
                        if (constraints.maxWidth > 600) ...[
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.maxWidth * 0.02,
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth * 0.02),
                          Text(
                            "About",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.maxWidth * 0.02,
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth * 0.02),
                          Text(
                            "Services",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.maxWidth * 0.02,
                            ),
                          ),
                          SizedBox(width: constraints.maxWidth * 0.02),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxWidth * 0.015),
                                color: Colors.white,
                              ),
                              width: constraints.maxWidth * 0.1,
                              height: constraints.maxHeight * 0.09,
                              child: Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: constraints.maxWidth * 0.02,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: constraints.maxWidth * 0.29,
                        top: constraints.maxHeight * 0.35),
                    child: Text(
                      "Welcome to CAMPUSBUZZ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.03,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Lpage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(constraints.maxWidth * 0.01),
                      color: Colors.red,
                    ),
                    width: constraints.maxWidth * 0.25,
                    height: constraints.maxHeight * 0.07,
                    child: Center(
                      child: Text(
                        "Host Event",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: constraints.maxWidth * 0.015,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
