import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8, // 80% lebarnya
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    spreadRadius: 5.0,
                    blurRadius: 7.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 50,
                    ),
                    /**
                    * only : hanya memberi satu posisi
                    * symmertic : memberi jarak sumbu x/y
                    * all : memberi semua jarak
                    */
                    child: Text(
                      'NAME',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ucup Guerero',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    /**
                     * start => kiri
                     * center => tengah
                     * end => kanan
                     * spaceBetween => ke pojok dari bagian
                     * spaceAround => ke tengah dari bagian
                     * spaceEvenly => ke tengah hampir mirip spaceAround
                     */
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent, borderRadius: BorderRadius.circular(
                                  15),
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Addres'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Tempat Tanggal Lahir'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
