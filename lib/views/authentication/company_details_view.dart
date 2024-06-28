import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/custom_elevated_button.dart';


class CompanyDetails extends StatefulWidget {
  const CompanyDetails({super.key});

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/logo.png",
                  width: 150,
                  height: 150,
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Particulars of Directors\/Shareholders",style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: 715,
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
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Personal Details",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Full name',
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Omang/Passport no',
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Citizenship',
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Position',
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: '%Share',
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "% Ratio of Shares",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Stack(
                                      children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                        Positioned(
                                          right: 10,
                                          top: 15,
                                          child: Text(
                                            '%',
                                            style: TextStyle(color: Colors.grey, fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text("Citizens of Botswana",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)),
                                    width: 80, // Set a fixed width
                                    height: 60,

                                    child: Stack(
                                      children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                                            border: OutlineInputBorder(  borderRadius: BorderRadius.circular(10)),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                        Positioned(
                                          right: 10,
                                          top: 15,
                                          child: Text(
                                            '%',
                                            style: TextStyle(color: Colors.grey, fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text("Non-Citizens of Botswana",style: TextStyle(color: Colors.grey,fontSize: 15),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: CustomElevatedButton(
                            onPressed: () {
                              context.go('/sign_in');


                            },
                            buttonText: "Next",
                            width: screenWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
