import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';
import 'custom_form_text.dart';
import 'custom_textformfield.dart';

class Page1 extends StatelessWidget {
  final VoidCallback onConfirm;

  const Page1({Key? key, required this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomText(
                    text: 'Sales Application Form for a Non-sitting\nTenant',
                    size: 16,
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 610,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 14,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'BHC/RO/EST-Pr04/F04',
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Company name', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Registration no.', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Postal address', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Physical address', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextFormField(
                                lableText: 'Telephone', lablecolor: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: CustomTextFormField(
                                lableText: 'Cellphone', lablecolor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Fax', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'E-mail address', lablecolor: Colors.grey,
                        ),
                        SizedBox(height: 20),
                        CustomElevatedButton(onPressed: onConfirm
                        , buttonText: "CONFIRM", width: ScreenWidth,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

