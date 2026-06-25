import 'package:flutter/material.dart';
// 1 create  a variable that stores the converted currency value
//2 create a function that multiple the value given by the textfeild with 81
//3 store the value in the variable the created
//4 display the variable

class CurrencyConvertorMaterialPage extends StatefulWidget {
   const CurrencyConvertorMaterialPage({super.key});
  @override
  State<CurrencyConvertorMaterialPage> createState() =>
   _CurrencyConvertorMaterialPageState();
  
      
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
    
    double result = 0;
    
    final TextEditingController textEditingController = TextEditingController();
   


  @override
  Widget build(BuildContext context) {
    print('let the show you demo how the app works ');

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 255, 255, 255),
        width: 1.0,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Currency Convertor',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize : 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Currency Convertor made by Harun',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Text(
              // int ---> string intergervalue .toString()
              // string --->int int.parese(stringvalue)
              'INR $result',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 2, 141, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: textEditingController,
                onSubmitted: (value) {
                  print(value);
                },
                style: TextStyle(
                  color: Color.fromARGB(255, 248, 248, 248),
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter the currency amount here',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 251, 251, 251),
                  ),
                  prefixIcon: const Icon(
                    Icons.currency_exchange_outlined,
                    color: Colors.white,
                  ),
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            //button are classifies are two types

            //rasied button -----> elvateion button using elvation property we can set the shadow of the button
            // apperas like a text button----> flat text button we can set the background color of the button using background color property
            ElevatedButton(
              onPressed: () {
                //debug, release, profile
                  setState(() {
                 result = double.parse(textEditingController.text) * 94.30;
                });
            
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(15),

                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(Size(150, 50)),
              ),

              child: Text('Convert '),
            ),
          ],
        ),
      ),
    );
  }
}
