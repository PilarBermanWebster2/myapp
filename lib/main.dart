import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: MyAnimatedWidgets(),
        ),
      ),
    );
  }
}

class MyAnimatedWidgets extends StatefulWidget {
  @override
  _MyAnimatedWidgetsState createState() => _MyAnimatedWidgetsState();
}

class _MyAnimatedWidgetsState extends State<MyAnimatedWidgets> {
  bool _first = true;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              width: _first ? 150 : 100,
              height: _first ? 150 : 100,
              color: Colors.grey[300],
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Image.network(
                      'https://i.pinimg.com/236x/2f/52/bb/2f52bb67e52f767ed39a2d655537829c.jpg', // URL gambar pertama
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            AnimatedContainer(
              width: _first ? 150 : 100,
              height: _first ? 150 : 100,
              color: Colors.grey[300],
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Image.network(
                      'https://i.pinimg.com/564x/cd/44/32/cd44329d526b8041583d5b213659f853.jpg', // URL gambar kedua
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              _first = !_first;
            });
          },
          child: AnimatedContainer(
            width: 300,
            height: 100,
            color: Colors.grey[300],
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Image.network(
                      'https://i.pinimg.com/564x/4e/68/5b/4e685b767306dc74464572216c2bac78.jpg', // URL gambar ketiga
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    'Mizuhara Chizuru',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            setState(() {
              _first = !_first;
            });
          },
          child: AnimatedContainer(
            width: 300,
            height: 100,
            color: Colors.grey[300],
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Image.network(
                      'https://i.pinimg.com/564x/38/40/44/38404403c0de80b52f04298c0e6485ee.jpg', // URL gambar keempat
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    'Ichinose Chizuru',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}