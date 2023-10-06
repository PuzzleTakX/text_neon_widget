import 'package:flutter/material.dart';
import 'package:text_neon_widget/text_neon_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PuzzleTak Neon Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ItemColor> list = [
    ItemColor(text: "P",color: Colors.blue),
    ItemColor(text: "U",color: Colors.amber),
    ItemColor(text: "Z",color: Colors.red),
    ItemColor(text: "Z",color: Colors.green),
    ItemColor(text: "L",color: Colors.indigo),
    ItemColor(text: "E",color: Colors.pink),
    ItemColor(text: "-",color: Colors.deepOrange),
    ItemColor(text: "T",color: Colors.lime),
    ItemColor(text: "A",color: Colors.teal),
    ItemColor(text: "K",color: Colors.lightGreen),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('PuzzleTak Neon Widget'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
       child: Column(
         children: [
           const SizedBox(height: 50,),
           _simpleOne(),
           const SizedBox(height: 30,),
           _simpleTow(),
           const SizedBox(height: 30,),
           _simpleTree(),
           const SizedBox(height: 30,),
           _simpleFour(),

         ],
       ),
      ),
    );
  }

  Widget _simpleOne(){
    return const Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PTTextNeon(text: 'بهمن',color: Colors.blue,
          font: "one",
          shine: true,
          fontSize: 30,
          strokeWidthTextHigh: 3,
          blurRadius: 30,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
        PTTextNeon(text: '  تیموری  ',color: Colors.red,
          shine: true,
          font: "one",
          fontSize: 30,
          strokeWidthTextHigh: 3,
          blurRadius: 30,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
        PTTextNeon(text: 'نژاد',color: Colors.green,
          shine: true,
          fontSize: 30,
          font: "one",
          strokeWidthTextHigh: 3,
          blurRadius: 30,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,



        ),
      ],
    );
  }
  Widget _simpleTow(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PTTextNeon(text: 'N e o n ',color: Colors.amber,
          font: "four",
          shine: true,
          fontSize: 40,
          strokeWidthTextHigh: 3,
          blurRadius: 25,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
        PTTextNeon(text: 'W i d g e t',color: Colors.pink,
          shine: true,
          fontSize: 40,
          font: "four",
          strokeWidthTextHigh: 3,
          blurRadius: 20,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
      ],
    );
  }
  Widget _simpleTree(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PTTextNeon(text: 'F l u t t e r ',color: Colors.lightBlue,
          font: "five",
          shine: true,
          fontSize: 40,
          strokeWidthTextHigh: 3,
          blurRadius: 25,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
        PTTextNeon(text: ' & ',color: Colors.deepPurple,
          font: "five",
          shine: true,
          fontSize: 25,
          strokeWidthTextHigh: 3,
          blurRadius: 25,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
        PTTextNeon(text: ' D a r t',color: Colors.teal,
          shine: true,
          fontSize: 40,
          font: "five",
          strokeWidthTextHigh: 3,
          blurRadius: 20,
          strokeWidthTextLow: 1,
          backgroundColor: Colors.black,

        ),
      ],
    );
  }
  Widget _simpleFour(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: list.map((e) => PTTextNeon(text: " ${e.text!} ",color: e.color!,
        font: "tree",
        shine: true,
        fontSize: 35,
        strokeWidthTextHigh: 3,
        blurRadius: 25,
        strokeWidthTextLow: 1,
        backgroundColor: Colors.black,

      ),).toList(),
    );
  }




}


class ItemColor{
   String? text;
   MaterialColor? color;

   ItemColor({this.color,this.text});

}
