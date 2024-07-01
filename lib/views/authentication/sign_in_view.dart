import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/custom_elevated_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

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
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/logo.png",
                      width: 110,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.red.shade800, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 550,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Text("Sign In Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: 'E-mail/phone',
                                labelStyle: TextStyle(color: Colors.grey),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9a-zA-Z@.]')),
                              ],
                              validator: _validateEmailPhone,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child:  TextFormField(
                              controller: _passwordcontroller,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.grey),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: TextButton(onPressed: (){
                                context.go('/forgot_password_view');
                              }, child: Text("Forget password?",style: TextStyle(color: Colors.red.shade800,fontSize: 14),))),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: CustomElevatedButton(onPressed: (){
                              if (_formKey.currentState!.validate()) {
                                context.go('/home_page_view');

                              }
                            }, buttonText: "Sign In", width: ScreenWidth,),
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
                              Text("Or Sign up with",style: TextStyle(color: Colors.grey),),
                              Container(
                                height: 1,
                                width: 100,
                                color: Colors.grey,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                    onTap: (){
                                      print("button 3");
                                    },
                                    child: Container(
                                        decoration:BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black26)
                                        ),
                                        child: Image.asset("assets/Google.png",width: 40))
                                ),
                                InkWell(
                                    onTap: (){
                                      print("button 3");
                                    },
                                    child: Container(
                                        decoration:BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black26)
                                        ),
                                        child: Image.asset("assets/FB.png",width: 40))
                                ),
                                InkWell(
                                    onTap: (){
                                      print("button 3");
                                    },
                                    child: Container(
                                        decoration:BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black26)
                                        ),
                                        child: Image.asset("assets/Apple.png",width: 40,))
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?",style: TextStyle(color: Colors.grey),),
                              TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.red.shade800),))
                            ],)

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
