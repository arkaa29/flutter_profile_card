import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/detail-profile.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  final List<String> badgeList = const <String>[
    '😈',
    '☠️',
    '🤩',
    '🧠',
    '🤬',
    '🤗',
    '✌🏻',
    '😴',
    '🔥',
    '🤡',
  ];

  final title = 'Arkananta Putra';

  final List<String> urlList = const <String>[
    'https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=872',
    'https://images.unsplash.com/photo-1614732414444-096e5f1122d5?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=774',
    'https://images.unsplash.com/photo-1446776858070-70c3d5ed6758?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=872',
    'https://images.unsplash.com/photo-1451186242394-2b461812025b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=872',
    'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=872',
    'https://images.unsplash.com/photo-1446776754471-f39a8a4eb422?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=872',
    'https://images.unsplash.com/photo-1446776709462-d6b525c57bd3?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=870',
    'https://images.unsplash.com/photo-1459909633680-206dc5c67abb?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=871',
  ];

  /**
   * Tampilkan data image dari internet menggunakan listView
   * buat imagenya menjadi bentuk lingkaran
   * minimal 5
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                /**
                 * IMAGE PROFILE
                 */
                //   Image.asset('assets/profile.png',
                //   width: 100,
                //   height: 100,
                // ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('assets/roblos.png'),
                ),
                /**
                 * TEXT NAME
                 */
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Kids Magazine',
                    ),
                  ),
                ),
                /**
                 * SPACER
                 */
                SizedBox(height: 10),
                /**
                 * TEXT ABOUT
                 */
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(),
                  textAlign: TextAlign.justify,
                ),
                /**
                 * SPACER
                 */
                SizedBox(height: 15),
                /**
                 * CARD CONTAINER ANDROID
                 */
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.gamepad,
                                    size: 75,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'GAME PROJECT',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('10 Gaes'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black12, width: 2),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                offset: Offset(2, 3),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  Icons.android,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Android Project\'s',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('10 APK'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailProfile(),),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'DETAIL PROFILE',
                        style: TextStyle(
                          fontFamily: 'Kids Magazine',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailProfile(title: title,),
                        ),
                      );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Detail Profile'.toUpperCase(),
                      ),
                    ),
                  ),
                ),
                /**
                 * SCHEDULE
                 */
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Schedule'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                //  ROW SCHEDULE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // width: double.infinity ngasih lebar full
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Belajar',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Icon(Icons.timer, size: 30),
                                Text(
                                  '07.30 - 14.30',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    /**
                     * MEMBACA
                     */
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 217, 0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'MEMBACA',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Icon(Icons.book, size: 30),
                                Text(
                                  '20.00 - 21.00',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'TIDUR',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Icon(Icons.bed, size: 30),
                                Text(
                                  '21.30 - 03.15',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'BADGES',
                      style: TextStyle(
                        fontFamily: 'Kids Magazine',
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    /**
                     * badgeList = Variable list diatas
                     * element = nama variable dari map
                     * return = tempat widget dari data list
                     */
                    scrollDirection: Axis.horizontal,
                    children: badgeList.map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text('${e}', style: TextStyle(fontSize: 60)),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Text(
                  'data image',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: urlList.map((url) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(url),
                          radius: 50,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: urlList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('${urlList[index]}'),
                          radius: 100,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
