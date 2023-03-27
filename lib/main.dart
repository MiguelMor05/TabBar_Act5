import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //_MyHomePageStatefull

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.amberAccent),
            indicatorColor: Colors.amberAccent,
            tabs: [
              Tab(icon: Icon(Icons.shop)),
              Tab(icon: Icon(Icons.smoking_rooms)),
              Tab(icon: Icon(Icons.shopping_bag)),
              Tab(icon: Icon(Icons.add_box)),
            ],
          ),
          centerTitle: true,
          title: Text('Cklass'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.shop, size: 350),
            Icon(Icons.smoking_rooms, size: 350),
            Icon(Icons.shopping_bag, size: 350),
            Icon(Icons.add_box, size: 350),
          ],
        ),
      ),
    );
  } //Widget
} //
