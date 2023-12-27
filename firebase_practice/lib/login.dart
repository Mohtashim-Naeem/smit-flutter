import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practice/signup.dart';
import 'package:firebase_practice/swiper.dart';
import 'package:firebase_practice/widgets/custom_textfield.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _userIdControl = TextEditingController();

  TextEditingController _passwordControl = TextEditingController();

  bool isLogingIn = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    login() async {
      try {
        isLogingIn = true;
        setState(() {});

        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _userIdControl.text, password: _passwordControl.text);
        await ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.blue,
          content: Text('Login Successful!'),
        ));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SwiperScreen()));
      } catch (e) {
        isLogingIn = false;
        setState(() {});

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('Wrong Password or Email'),
        ));
        print('I am error ============$e===========');
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'sign in to Flutter',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000221),
                          fontSize: 25,
                        ),
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.flutter_dash_rounded,
                            color: Color(0xff00C1AA),
                          )),
                    ],
                  ),
                  Text(
                    'To get update and\nspecial offers',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000221),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              CustomTextField(
                  controller: _userIdControl,
                  labeltext: 'Email',
                  icon: Icon(Icons.alternate_email),
                  size: 12),
              SizedBox(height: 15),
              CustomTextField(
                  controller: _passwordControl,
                  labeltext: 'Password',
                  icon: Icon(Icons.password_rounded),
                  size: 12),
              SizedBox(height: 30),
              Hero(
                tag: 'auth',
                child: ElevatedButton(
                    onPressed: login,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00C1AA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fixedSize: Size(width * 0.85, 70)),
                    child: isLogingIn
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            'Login',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          )),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,

                    // );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffC1272D)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.poppins(
                        color: Color(0xff5A5B5B),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => SignUp())));
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          color: Color(0xff00C1AA),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
