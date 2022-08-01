import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffffd701),
          title: const Center(
              child: Text(
            'Live Chat App',
            style: TextStyle(color: Color(0xff3450b9)
                ,fontFamily: 'Lobster', fontSize: 30),
          ),),
        ),
        body:
          Column(
            children: [
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Hello ',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30,
                          color: Colors.lightBlue),

                      children:const[
                        TextSpan(
                            text: 'bold ', style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Lobster'
                        )
                        )
                        ,
                        TextSpan(
                          text: 'World',
                          style: TextStyle(fontSize: 30,
                              color: Colors.red,
                              fontFamily: 'MochiyPopOne'),
                        ),
                        TextSpan(
                            text: ' Underline',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            )
                        ),

                      ]
                  ),
                ),
              ),

// //another Example of RichText
              RichText(text: TextSpan(
                  text: 'Dont have an account?',
                  style: Theme.of(context).textTheme.bodyText1,
                  children: const [
                    TextSpan(
                        text: ' Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                        )
                    )
                  ]
              ),
              ),

            ],
          )

        ),
    );
  }
}
