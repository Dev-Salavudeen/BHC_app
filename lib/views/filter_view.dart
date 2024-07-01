import 'package:flutter/material.dart';
import '../widgets/custom_filter_list.dart';
import 'package:go_router/go_router.dart';


class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Color(0xFFAD2524),
          leading:IconButton(onPressed: (){
            context.go('/rent_filter_view');

          }, icon: Icon(Icons.arrow_back_ios_sharp)),
          title: Text('Filter'),

        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                color:Color(0xFFAD2524) ,
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFF4F4F4),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFFF4F4F4), // Default border color
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Color(0xFFF4F4F4),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.white, // Border color when the TextFormField is focused
                            ),
                          ),
                          prefixIcon: Icon(Icons.search_outlined),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.filter_list_alt),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 210,top: 10),
                      child: Text('4 results found to rent',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFE3D6D6)
                        ),
                      ),
                    ),
                  ],

                ),
              ),
              Container(
                  height: 1000,
                  child: CustomFilterList())
            ],
          ),
        )
    );
  }
}
