import 'package:flutter/material.dart';
import 'custom_double_button.dart';
import 'custom_form_container.dart';
import 'custom_form_text.dart';
import 'custom_textformfield.dart';

class Page3 extends StatelessWidget {
  final VoidCallback onBack;

  const Page3({Key? key, required this.onBack}) : super(key: key);

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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CustomText(
                    text: 'Declaration/Signature',
                    size: 20,
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 585,
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
                          text: 'Signature',
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        Spacer(),
                        CustomTextFormField(
                          lableText: 'Representative name', lablecolor: Colors.grey,
                        ),
                        CustomContainer(height: 80, width: 150, text: 'Representative signature'),
                        CustomContainer(height: 110, width: 100, text: 'Company Stamp'),
                        Spacer(),
                        CustomText(
                          text: 'Declaration',
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        Spacer(),
                        CustomText(
                          text:
                          'We declare that to the best of our knowledge all the information above is true and correct. '
                              'We acknowledge that having provided the information freely and voluntarily, if the information '
                              'is found to be false or misleading or to be in any way prejudicial to the Corporation\'s interest, '
                              'such information may be used against me in any proceedings of any nature including Court proceedings '
                              'within the Republic of Botswana.',
                          size: 10,
                          color: Colors.grey,
                          weight: FontWeight.normal,
                        ),
                        CustomButton2(
                          onPressed1: onBack,
                          buttonText1: 'Back',
                          buttonText2: 'Confirm',
                          onPressed2: () {},
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
