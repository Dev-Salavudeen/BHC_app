import 'package:flutter/material.dart';
import 'custom_double_button.dart';
import 'custom_form_text.dart';
import 'custom_textformfield.dart';
import 'custom_toggle_button.dart';

class Page2 extends StatelessWidget {
  final VoidCallback onBack;
  final VoidCallback onNext;

  const Page2({Key? key, required this.onBack, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomText(
                    text: 'Personal Details',
                    size: 16,
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 600,
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
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Financing Details',
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Financing Institution', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Maximum Loan', lablecolor: Colors.grey,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Self Financing', lablecolor: Colors.red,
                        ),
                        Spacer(),
                        CustomText(
                          text: 'BHC Property Details',
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Expanded(child: CustomTextFormField(lableText: 'Plot/Unit no. rented', lablecolor: Colors.grey,)),
                            Expanded(child: CustomToggleButton(isSelected: [], onPressed: (int ) {  },)),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Expanded(child: CustomTextFormField(lableText: 'Plot/unit no. purchased', lablecolor: Colors.grey,)),
                            Expanded(child: CustomToggleButton(isSelected: [], onPressed: (int ) {  },)),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Expanded(child: CustomTextFormField(lableText: 'House type applied for', lablecolor: Colors.grey,)),
                            Expanded(child: CustomToggleButton(isSelected: [], onPressed: (int ) {  },)),
                          ],
                        ),
                        CustomButton2(
                          onPressed1: onBack,
                          buttonText1: 'Back',
                          buttonText2: 'Next',
                          onPressed2: onNext,
                        ),
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

