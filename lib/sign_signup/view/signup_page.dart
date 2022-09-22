import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: sizeScreen.height * 38 / 100,
              width: sizeScreen.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(204, 72, 71, 177),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 95, left: 20),
                child: Text(
                  "Hi\nWelcome",
                  style: GoogleFonts.raleway(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: sizeScreen.height * 65 / 100,
                width: sizeScreen.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 40),
                        child: Text(
                          "Signup",
                          style: GoogleFonts.raleway(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 40),
                        child: Row(
                          children: [
                            Image.asset("assests/images/Message.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "Email",
                                style: GoogleFonts.raleway(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                        ),
                        child: TextFormField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assests/images/Lock.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "Password",
                                style: GoogleFonts.raleway(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                        ),
                        child: TextFormField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 40,
                        ),
                        child: Row(
                          children: [
                            Image.asset("assests/images/Lock.png"),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "Confirm Password",
                                style: GoogleFonts.raleway(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                          right: 40,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              suffix: Text(
                            "Show",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(204, 72, 71, 177),
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 32.5,
                          top: 8,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot passcode?",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(204, 72, 71, 177),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 8,
                              backgroundColor:
                                  const Color.fromARGB(204, 72, 71, 177),
                              padding: const EdgeInsets.only(
                                left: 135,
                                right: 135,
                                top: 20,
                                bottom: 20,
                              )),
                          onPressed: () {},
                          child: Text(
                            "Signup",
                            style: GoogleFonts.raleway(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Already have an account? Signin",
                            style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(204, 72, 71, 177),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(
                            width: 145,
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Text("  or  "),
                          SizedBox(
                            width: 145,
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                            child: Image.asset(
                              "assests/images/Google__G__Logo.svg.png",
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Signup with Google",
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade600,
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 25,
              child: Image.asset("assests/images/logindecoration.png"),
            ),
            Positioned(
              top: 10,
              right: 0,
              child: Image.asset(
                "assests/images/decorationrectangle.png",
                width: 200,
              ),
            ),
            Positioned(
              top: 0,
              right: -50,
              child: Image.asset(
                "assests/images/roundeclipse.png",
                width: 200,
              ),
            ),
            Positioned(
              top: -30,
              left: 40,
              child: Image.asset(
                "assests/images/roundeclipse.png",
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
