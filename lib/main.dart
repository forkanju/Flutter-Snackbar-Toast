import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Snackbar'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (BuildContext con) {
            return RaisedButton(
              onPressed: () {
                Scaffold.of(con).showSnackBar(SnackBar(
                  content: Text("This is a snackbar"),
                  duration: Duration(seconds: 10),
                  action: SnackBarAction(
                    label: "ok",
                    onPressed: () {},
                  ),
                ));
                Fluttertoast.showToast(msg: "This is Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.TOP,
                    textColor: Colors.white,
                    backgroundColor: Colors.amberAccent
                );
              },
              child: Text("Click"),
            );
          },
        ),
      ),
    );
  }
}
