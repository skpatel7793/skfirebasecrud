import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:skfirebasecrud/fetchdata.dart';
import 'package:skfirebasecrud/insertdata.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('flutter firebase crud'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> InsertData()));
            }, child: Text(
              "insert data"
            )),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FetchData()));
            }, child: Text("fetch data")
            ),
          ],
        ),
      ),
    );
  }
}

