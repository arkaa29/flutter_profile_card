import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arkananta'),
        ),
        /**
         * ROW dan COLUM BISA MEMILIKI BANYAK WIDGET
         * ROW ITU KE SAMPING
         * COLUM ITU KEBAWAH
         */
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              child: Container(
                child: Text(
                  'NAMA',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.redAccent,
                    fontFamily: 'Poppins', // harus ada font nya
                  ),
                ),
              ),
            ),
            Text(
              'UCUP GUERERO',
              style: TextStyle(
                backgroundColor: Color.fromARGB(
                200,
                100,
                100,
                100,
                )
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}