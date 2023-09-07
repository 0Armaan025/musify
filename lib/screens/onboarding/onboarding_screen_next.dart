import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musify/common/continue_btn.dart';
import 'package:musify/common/register_btn.dart';
import 'package:musify/common/text_field.dart';

class OnBoarding_two extends StatefulWidget {
  const OnBoarding_two({super.key});

  @override
  State<OnBoarding_two> createState() => _OnBoarding_twoState();
}

class _OnBoarding_twoState extends State<OnBoarding_two> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Welcome to Musify",
          style: GoogleFonts.ubuntu(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 0.99,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/music.jpg'),
            ),
          ),
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/music.jpg'),
              ),
              ContinueButton(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0))),
                      backgroundColor: Colors.black,
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => Container(
                            height: size.height * 0.8,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ContinueButton(
                                    onTap: () {},
                                    bgColor: Colors.blue,
                                    textColor: Colors.white,
                                    text: "Continue with google.",
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Register",
                                      style: GoogleFonts.heebo(
                                        fontSize: 28,
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  AwesomeTextField(
                                      labelText: 'Enter Name',
                                      controller: _nameController,
                                      isObscure: false),
                                  AwesomeTextField(
                                      labelText: 'Enter Email',
                                      controller: _emailController,
                                      isObscure: false),
                                  AwesomeTextField(
                                      labelText: 'Enter Password',
                                      controller: _passwordController,
                                      isObscure: true),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: RegisterBtn(
                                      onTap: () {},
                                      bgColor: Colors.purple,
                                      textColor: Colors.white,
                                      text: "Register",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Login",
                                      style: GoogleFonts.heebo(
                                        fontSize: 28,
                                      ),
                                    ),
                                  ),
                                  Divider(),
                                  AwesomeTextField(
                                      labelText: 'Enter Email',
                                      controller: _emailController,
                                      isObscure: false),
                                  AwesomeTextField(
                                      labelText: 'Enter Password',
                                      controller: _passwordController,
                                      isObscure: true),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: RegisterBtn(
                                      onTap: () {},
                                      bgColor: Colors.blue,
                                      textColor: Colors.white,
                                      text: "Login",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                },
                bgColor: Colors.green.shade900,
                text: "Authorize",
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
