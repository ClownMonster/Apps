import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  final Widget title;
  MyAppBar({this.title});
  
  @override 
  Widget build(BuildContext context)
  {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.red[500]),
      child: Row(
        children: <Widget>[
          IconButton(
          icon: Icon(Icons.menu) ,
          tooltip: 'Navigation Menu',
          onPressed: null,
          ),
          Expanded(child: title,),
          IconButton(
            icon: Icon(Icons.search),
            tooltip:'Search', 
            onPressed: null)
        ],
      ),
    );
  }

}

class MyScafold extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
           title: Text(
             'Example',
              style: Theme.of(context).primaryTextTheme.title,
           ),
          ),

          Expanded(child: Center(child: Text('Hello world'),),)
        ],
      ),
    );
  }
}

void main()
{
  runApp(MaterialApp( theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
    title: 'Clown Monsters App',
    home: MyScafold(),
  ));
}
