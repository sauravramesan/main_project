import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_project/sign_signup/view/signup_page.dart';
import 'package:main_project/sign_signup/view/widgets/row_textformfied_widget.dart';
import 'package:main_project/sign_signup/view/widgets/text_form_field.dart';
import 'package:main_project/utils/images.dart';
import 'package:main_project/utils/text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                padding: const EdgeInsets.only(top: 90, left: 20),
                child: Text(
                  "Welcome\nback",
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
                height: sizeScreen.height * 67 / 100,
                width: sizeScreen.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 40),
                        child: Text(
                          "Login",
                          style: GoogleFonts.raleway(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const RowTextFieldWidget(
                        emailImage: emailImage,
                        emailText: emailText,
                      ),
                      const TextFormFieldWidget(),
                      const RowTextFieldWidget(
                          emailImage: passwordImage, emailText: passwordText),
                      const TextFormFieldWidget(
                        suffixText: "Show",
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
                            "Signin",
                            style: GoogleFonts.raleway(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: Text(
                            "Create account",
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
                                "Continue with Google",
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
              top: 85,
              right: -50,
              child: Image.asset(
                "assests/images/roundeclipse.png",
                width: 200,
              ),
            ),
            Positioned(
              top: -40,
              left: -50,
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
