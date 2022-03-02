
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  bool visible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: visible,
              child: CircularProgressIndicator(
                
                valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                
              ),
            ),

            TextButton(onPressed: ()
                {
                  setState(() {
                    if(visible==false) visible = true; else visible = false;
                  });
                }, child:
            Text(visible ? "Gizle" : "Göster"))


          ],
        ),
      ),

    );
  }
}
