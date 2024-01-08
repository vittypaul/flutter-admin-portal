import 'package:flutter/material.dart';
import 'package:website/dashboard/admin_dashboard.dart';
import 'package:website/screens/signup_screen.dart';
import 'package:website/screens/verification_mail.dart';

class AuthScreen1 extends StatefulWidget {
  const AuthScreen1({super.key});

  @override
  State<AuthScreen1> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen1> {
  final _form = GlobalKey<FormState>();

  var _enterEmail = '';
  var _enterPassword = '';

  void _submit() {
    _form.currentState!.save();

    // Perform authentication logic here

    // Navigate to AdminDashboard screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AdminDashboard()),
    );
  }

  void _forgotPassword() {
    // Navigate to the verification email screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Verificationmail()),
    );
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                  height: 120,
                ),
                Container(
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 1050,
                      ),
                      Text(
                        "You've Been Missed !",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 160,
                ),
                Container(
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 1050,
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 240,
                ),
                Container(
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 1050,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "to host your event right now",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                  left: 1000, top: 285, right: 90), // Adjusted right padding
              child: Container(
                width: screenWidth * 2 / 5 - 50, // Adjusted width
                child: Form(
                  key: _form,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon:
                              const Icon(Icons.mail, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.grey,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                        onSaved: (value) {
                          _enterEmail = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.grey,
                        ),
                        obscureText: true,
                        onSaved: (value) {
                          _enterPassword = value!;
                        },
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: _forgotPassword,
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _submit,
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
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 485.0,
                ),
                Row(
                  children: [
                    SizedBox(width: 1050),
                    Text(
                      "Don't have an account ?",
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()),
                        );
                      },
                      child: Text(
                        'Signup',
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
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AuthScreen1(),
  ));
}
