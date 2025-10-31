import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  final title;
  const DetailProfile({this.title, this.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini adalah appbar'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
              /**
               * Navigator.pop() untuk close halaman
               */
              Navigator.pop(context);
            }, 
            child: Text('BACK'),),
            Text('Detail $title'),
          ],
        ),
      ),
    );
  }
}