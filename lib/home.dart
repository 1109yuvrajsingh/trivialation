import 'package:flutter/material.dart';
import 'package:trivialation/profile.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        bottomNavigationBar: BottomAppBar(
          color: Colors.red.shade600,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),onPressed: (){

                },
                ),
                SizedBox(
                  width: 29.0,
                ),
                IconButton(
                  icon: Icon(Icons.search),onPressed: (){

                },
                ),
                Spacer(),

                IconButton(
                  icon: Icon(Icons.desktop_windows),onPressed: (){

                },
                ),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                  icon: Icon(Icons.perm_identity),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> ProfileApp()
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Home(),
      ),
    );

  }
}



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: ListView(

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(

                child: FlatButton(
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),

                  onPressed: (){
                    Explore();
                  },
                ),
              ),
              SizedBox(
                child: Text('|',
                  style: TextStyle(
                    color: Colors.red,
                  ),),
              ),
              Container(

                child: FlatButton(
                  child: Text(
                    'Community',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),

                  onPressed: (){

                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Center(
                  child: Image.asset('assets/download (1).jpg')
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Center(
                child: Image.asset('assets/download.jpg'),

              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Image.asset('assets/download (1).jpg'),

            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10,10,10,0),
            height: 220,
            width: double.maxFinite,
            child: Card(
                elevation: 5,
                child: Image.asset('assets/download.jpg')
            ),
          ),

        ],
      ),

    );
  }
}

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text('container-1'),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text('container-1'),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: Center(
              child: Text('container-1'),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text('container-1'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
