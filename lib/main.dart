import 'package:flutter/material.dart';
import 'package:flutter_gif_trail/listview.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      title: new Text(
        'Welcome to LetsStopAids',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      seconds: 5,
      navigateAfterSeconds: AfterSplash(),
      image: new Image.asset(
          'assets/Neon-Loading-gif.gif'),
      backgroundColor: Colors.red[900],
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}

class AfterSplash extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[400],
        title: new Text("LetsStopAids"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => {}, 
          icon: Icon(Icons.home_outlined)),
          IconButton(onPressed: () => {}, 
          icon: Icon(Icons.contact_page_sharp)),
          IconButton(onPressed: () => {}, 
          icon: Icon(Icons.search_rounded)),
        ],
      ),
     body: new Center(
        child: BodyLayout(),
          
        ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red[400],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Contact',
            backgroundColor: Colors.white60,
          ),
          
        ],
        ),
    );
    
  }
}
 