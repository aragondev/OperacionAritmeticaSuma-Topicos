
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Suma de 2 numeros'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  
  int _operador1;
  int _operador2 = 8;
  int _result = 0;



  void _addFunction() {
    setState(() {
      _result = _operador1 + _operador2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TextField(                
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  hintText: 'Ingrese un numero', labelText: 'Numero 1'),
              keyboardType: TextInputType.number,     
                  onChanged: (data){
                    _operador1 = int.parse(data);
                  },
              ),
              
            ),
           Padding(
             padding: EdgeInsets.symmetric(horizontal:20.0,vertical:15.0),
             child:  TextField(              
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  
                hintText: 'Ingrese un numero', labelText: 'Numero 2'),
              onChanged: (data){
                  _operador2= int.parse(data);
                },
              keyboardType: TextInputType.number,                
            ),
           ),
            Text(
              //'$_counter',
              '$_result',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addFunction,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
