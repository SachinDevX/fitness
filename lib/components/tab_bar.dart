import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
              color: Colors.black,
                  ),
                  labelPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                    Tab(
                      icon: Icon(Icons.directions_car),
                      text: "car",
                    ),
                    Tab(
                      icon: Icon(Icons.directions_transit),
                      text: "transit",
                    ),
                    Tab(icon: Icon(Icons.directions_bike)),
                    Tab(icon: Icon(Icons.directions_car)),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
            ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
          ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
