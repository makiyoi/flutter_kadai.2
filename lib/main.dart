import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter kadai2',
      theme: ThemeData(

        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   double number = 0;

  TextEditingController numberController =TextEditingController();
  TextEditingController setNumController = TextEditingController();


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kadai2', style: TextStyle(color: Colors.white60,
            fontSize: 20,
            fontWeight: FontWeight.bold),),
      ),

      body: Column(
            children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 50,
                 margin: EdgeInsets.only(left: 20,),
                 decoration: BoxDecoration(
                 border: Border.all(color: Colors.brown)
                ),

                  child: Row(
                   children: [
                   Expanded(
                    child:  TextField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                     // inputFormatters: List<TextInput.formatter>,
                      decoration: InputDecoration(
                        hintText: '',
                        border: InputBorder.none,

                      ),
                  ),
               ),
               ]
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  margin: EdgeInsets.only(left: 20,right: 20,),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown)
                  ),
                  child: Row(
                      children: [
                        Expanded(
                          child:  TextField(
                            controller: setNumController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                   Text('結果:', style: TextStyle(fontSize: 15,),),
                   Text('${number.toStringAsFixed(3)}',
                     style: TextStyle(fontSize: 20),),


            ]
          ),
             SizedBox(height: 10,),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                        ElevatedButton(
                          onPressed: (){
                           setState(() {
                             number = (double.parse(numberController.text) + double.parse(setNumController.text));
                            });
                          },
                        child: Text('+'),
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.brown,
                         textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                       ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            number =  (double.parse(numberController.text) - double.parse(setNumController.text));
                          });
                        },
                        child: Text('-'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.brown,
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            number = (double.parse(numberController.text) * double.parse(setNumController.text));
                          });
                        },
                        child: Text('×'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.brown,
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            number = (double.parse(numberController.text) / double.parse(setNumController.text));
                          });
                        },
                        child: Text('÷'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.brown,
                          textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ]
                   ),
                      SizedBox(height: 40,),

                   Column(
                     children: [
                      ElevatedButton(
                         onPressed: (){
                           setState(() {
                             numberController.clear();
                             setNumController.clear();
                             //int $num = 0;

                            });
                         },
                        child: Text('RESET'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown,
                          backgroundColor: Colors.brown.shade300,
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      )
                 ]
                    ),
                SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    width: 100,
                    height: 100,
                    child:
                   ClipRRect(
                    child: Image.asset('assets/nikukyuu.jpg'),
              ),
              ),
                  Container(
                    width: 100,
                    height: 100,
                    child:
                     ClipRRect(
                        child: Image.asset('assets/nikukyuu.jpg'),
                ),
              ),
                 Container(
                     width: 100,
                     height: 100,
                    child:
                     ClipRRect(
                    child: Image.asset('assets/nikukyuu.jpg'),



                ),
              ),
                ]
              ),
      ],
    ),




                    );



























  }
}


                  // 表示

            //class TextField extends StatefulWidget{
           // _TextFieidState createState() => _TextFieldState();

            //class _TextFieldState extends State<TextField> {
             // String _expression ='1+1';
              //@overeide
                //   Widget build(BuildContext context) {
                  //   return Expanded(
                   //   flex: 1,
                     //         child: Container(
                       //    child: Align(
                       //  alignment: Alignment.centerRight,
                         // child: Text(
                           // _expression,
                             // style: TextStyle(
                               // fontSize: 30.0,
                   //)



           //),
           // )
           //),
             //            )
         //}
      // }


//キーボード
// class Keyboard  extends StatelessfulWidget{
//   @override
// Widget build(BuildContext context) {
// return Containar(

//);
//}

//キーボタン
//class Button extends StatelessfulWidget{
//@override
//Widget build(BuildContext context) {
//return Containar(

//);
//}
//}


//),
//);


// children: <Widget>[
//  const Text(
//  'You have pushed the button this many times:',
//),
//  Text(
//  '$_counter',
// style: Theme.of(context).textTheme.headline4,
//),
//  ],
//),
//]
//),

