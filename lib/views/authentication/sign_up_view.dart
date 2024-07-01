import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../model/user_data.dart';
import '../../widgets/custom_elevated_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;
  late TextEditingController _codecontroller;

  String? _validateEmailPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email or phone number';
    }
    final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!emailRegExp.hasMatch(value) && !phoneRegExp.hasMatch(value)) {
      return 'Please enter a valid email or phone number';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _codecontroller = TextEditingController();
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _codecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Builder(builder: (context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/logo.png",
                          width: 110,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.red.shade800,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: TabBar(
                          dividerHeight: 0,
                          splashFactory: NoSplash.splashFactory,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red[800],
                          ),
                          labelColor: Colors.white,
                          tabs: [
                            Tab(
                              child: Text("Company"),
                            ),
                            Tab(
                              child: Text("Individual"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 620,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "Sign Up Details",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: TextFormField(
                                controller: _emailcontroller,
                                decoration: InputDecoration(
                                  labelText: 'E-mail/phone',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                        width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9a-zA-Z@.]')),
                                ],
                                validator: _validateEmailPhone,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: TextFormField(
                                controller: _codecontroller,
                                decoration: InputDecoration(
                                  labelText: 'Verification Code',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                        width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: TextFormField(
                                controller: _passwordcontroller,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.grey),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.5),
                                        width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: CustomElevatedButton(
                                onPressed: () {

                                  if (_formKey.currentState!.validate()) {
                                    if (DefaultTabController.of(context).index ==
                                        0) {
                                      User data = getUpdate();
                                      context.go('/company_details_view');
                                    } else {
                                      context.go('/individual_details_view');
                                    }
                                  }

                                },
                                buttonText: "Sign Up",
                                width: ScreenWidth,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isChecked = !_isChecked;
                                    });
                                  },
                                  child: Checkbox(
                                    value: _isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isChecked = value ?? false;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                Text(
                                  'I agree to ',
                                  style: TextStyle(fontSize: 14),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Terms of Use',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red.shade800),
                                  ),
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.zero),
                                  ),
                                ),
                                Text(
                                  ' or ',
                                  style: TextStyle(fontSize: 14),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red.shade800),
                                  ),
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.zero),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 1,
                                  width: 100,
                                  color: Colors.grey,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                ),
                                Text(
                                  "Or Sign in with",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Container(
                                  height: 1,
                                  width: 100,
                                  color: Colors.grey,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 90.0, vertical: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        print("button 3");
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.black26)),
                                          child: Image.asset(
                                              "assets/Google.png",width: 40,))),
                                  InkWell(
                                      onTap: () {
                                        print("button 3");
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.black26)),
                                          child: Image.asset(
                                              "assets/FB.png",
                                          width: 40,))),
                                  InkWell(
                                      onTap: () {
                                        print("button 3");
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.black26)),
                                          child: Image.asset(
                                              "assets/Apple.png",
                                          width: 40,))),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextButton(
                                    onPressed: () {
                                      context.go('/sign_in_view');
                                    },
                                    child: Text(
                                      "Sign in",
                                      style:
                                          TextStyle(color: Colors.red.shade800),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  User getUpdate() {
    return User(
        email: _emailcontroller.text,
        password: _passwordcontroller.text,
        role: '');
  }
}
