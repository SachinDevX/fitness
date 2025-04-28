import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.search, color: Colors.black, size: 30,),
            onPressed: () {
              // Handle search action
            },
          ),
          title: Text(
            'Explore',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.black,size: 30,),
              onPressed: () {
                // Handle notification action
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Explore Page Content Here'), // Your main content
        ),
      ),
    );
  }
}
