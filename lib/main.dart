import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:currency_converter/pages/currency_convertor_material_page.dart';

void main() {
  runApp(const MyApp());
}
//they have two types of widgets 

//1 state less widgets 
//2 state full widgets 
//3 inherited widgets 



// app desgin are two type are 

//1 material desgin //developed by google 
//2 cupertino desgin //developed by apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertorMaterialPage(),
    );
  }
}