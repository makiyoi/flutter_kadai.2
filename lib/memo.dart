import 'package:dentaku/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
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
  var _TextField = '';
  bool _Textfield = true;

  void _incrementCounter() {
    setState(() {
      _TextField;
    });
  }
  void onPressed() {
    ElevatedButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kadai2', style: TextStyle(color: Colors.black,
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
                Text('$_TextField',),
              ]
          ),
          SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {_incrementCounter;


                    });
                  },
                  child: Text('+'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {

                    });
                  },
                  child: Text('-'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  child: Text('×'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {

                    });
                  },
                  child: Text('÷'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
              ]
          ),
          SizedBox(height: 100,),
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
