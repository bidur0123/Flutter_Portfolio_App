import 'dart:ui' ;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(

      home:  HomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
      const Page1(),
      const Page2(),
       const Page3(),
      const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      //  toolbarHeight: 60.0,
        title: const Text (
          'PORTFOLIO',
          style: TextStyle(
            fontSize: 25.0,
             fontFamily: 'Signika',
         //   fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
        ),
        ),
       elevation: 0,
       backgroundColor: Colors.deepPurple.shade400,
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                padding: EdgeInsets.fromLTRB(0.0,110.0, 0.0,5.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Made By Bidur Gupta',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Signika',
                  ),
                ),
              ),
              //  ListTile(
              //     leading: Icon(Icons.account_circle),
              //    title: Text('Profile'),
              // ),
              //  ListTile(
              //     leading: Icon(Icons.deblur_sharp),
              //    title: Text('Skills'),
              // ),
              //  ListTile(
              //      leading: Icon(Icons.contact_phone),
              //       title: Text('Contact'),
              // ),
            ],
          ),
        ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Stack buildMyNavBar(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          color: Colors.blue.shade400,
        ),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container (
        // margin:EdgeInsets.all(10.0),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade500,
          borderRadius:  const BorderRadius.all(
            Radius.circular(40.0)
            // topLeft: Radius.circular(40),
            // topRight: Radius.circular(40),
            // bottomLeft: Radius.circular(40),
            // bottomRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                Icons.work_rounded,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.work_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                Icons.widgets_rounded,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
    ),
      ),
    ],);
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: const BoxDecoration(
            //  image: DecorationImage(image: NetworkImage('https://images.freeimages.com/images/large-previews/5a5/xmas-christmas-1171212.jpg'),fit: BoxFit.fill)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 24, 40, 5),
                  child: const CircleAvatar(
                    radius: (120),
                    backgroundImage: AssetImage('images/photo.png'),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(left: 5.0),
                  margin: const EdgeInsets.only(top: 30.0),
                  child:  const Expanded(
                    child: Text(
                      'Hi I am , ',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Signika',
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                 Container(
                  child: const Text(
                    'Bidur Gupta',
                    style: TextStyle(
                      fontSize: 40,
                     fontWeight: FontWeight.bold,
                      fontFamily: 'Signika',
                      color: Colors.purple,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                 Container(
                   child: const Text(
                    'I am 2nd year student at AKGEC . and currently I am learning App Dev using flutter  and I have learnt some basic concepts of HTML, CSS  and I also know C and C++ programming languages.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Signika',
                      color: Colors.purple,
                    ),
                ),
                 ),
                // Container(
                //   margin: const EdgeInsets.fromLTRB(2, 24, 100, 20),
                //   child: const CircleAvatar(
                //     radius: (120),
                //     backgroundImage: AssetImage('images/photo.png'),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.0,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      color: Colors.blue.shade400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
             Padding(
               padding: EdgeInsets.all(20.0),
               child: Text(
                   'My Skills',
                 style: TextStyle(
                   fontSize: 40.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.deepPurple,
                 ),
               ),
             ),
            SizedBox(
              height: 0.0,
              width: 140.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0,30.0,60.0, 0.0),
              child: Text(
                'App Development',
                  style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Signika',
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                       ),
                    ),
            ),
           Padding(
             padding: EdgeInsets.all(8.0),
             child: Text (
                 'I am currently improving my mobile app development skills by learning flutter technology.',
               style: TextStyle(
                 fontFamily: 'Signika',
                 fontWeight: FontWeight.normal,
                 fontSize: 20.0,
                 color: Colors.purple,
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.fromLTRB(0.0,10.0,60.0, 0.0),
             child: Text (
                 'Web Development',
               style: TextStyle(
                 fontSize: 30.0,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Signika',
                 color: Colors.deepPurple,
               ),
             ),
           ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text (
                'In web development I  have learnt  some basic concept of HTML,CSS.  ',
                style: TextStyle(
                  fontFamily: 'Signika',
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: Colors.purple,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0,10.0,140.0, 0.0),
              child: Text (
                'Languages',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Signika',
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text (
                'I have learnt  some basic concept of  C language and C++ language . ' ,
                style: TextStyle(
                  fontFamily: 'Signika',
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: Colors.purple,
                ),
              ),
            ),
           // CircleAvatar(
           //   radius: 70.0,
           //  backgroundImage: AssetImage('images/html5.png'),
           //   ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: const Center(
        child: Text(
          "My Work Section",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.fromLTRB(5.0, 60.0, 5.0, 40.0),
          height: 600.0 ,
          width:  double.infinity,
          //   color: Colors.yellowAccent,
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Icon(
                //   Icons.account_circle,
                //   color: Colors.amberAccent,
                //   size: 130.0,
                // ),
            const   CircleAvatar(
                  radius: (80),
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'CONNECT WITH ME',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Signika',
                //    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Card(
                  color: Colors.lightBlueAccent,
                  child: ListTile(
                    leading: IconButton(
                      icon: const Icon(
                          Icons.call,
                        size: 35.0,
                      ),
                      onPressed: (){

                      },
                      //   size: 30.0,
                    ),
                    title: const Text(
                      '+91 7398682731',
                      style: TextStyle(
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.lightBlueAccent,
                  child: ListTile(
                    leading: IconButton(
                      icon: const Icon(
                        Icons.mail,
                        size: 35.0,

                      ),
                      onPressed: () async {
                        var url=Uri.parse("mailto:bidurgupta125@gmail.com");
                        await launchUrl(url);
                      },
                    ),
                    title: const Text(
                      'bidurgupta125@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Signika',
                       fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                // Card(
                //   color: Colors.lightBlueAccent,
                //   child: ListTile(
                //     leading: IconButton (
                //       icon: const Icon(Icons.link),
                //       onPressed: (){
                //       },
                //       //   size: 30.0,
                //     ),
                //     title: const Text(
                //       'https://www.linkedin.com/in/bidur-gupta-3b515122a',
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 20.0,
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'FOLLOW ON SOCIAL MEDIA',
                  style: TextStyle(
                    fontFamily: 'Signika',
                   // fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.purple,
                  ),
                ),

              //   ),
                const SizedBox(
                  height: 20.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton (
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(100.0),
                         side: BorderSide(color: Colors.deepPurple.shade900),
                       ),
                      ),
                      onPressed: () async {
                        var url=Uri.parse("https://www.linkedin.com/in/bidur-gupta-3b515122a");
                        await launchUrl(url);
                      },
                      child: Image.asset('images/icon.png'),
                    ),
                   const  SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton (
                      style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.blue.shade700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          side: BorderSide(color: Colors.deepPurple.shade900),
                        ),
                      ),
                      onPressed: () async {
                        var url=Uri.parse("https://github.com/bidur0123");
                        await launchUrl(url);
                      },
                      child: Image.asset('images/github.png'),
                    ),
                    const  SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton (
                      style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.blue.shade700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          side: BorderSide(color: Colors.deepPurple.shade900),
                        ),
                      ),
                      onPressed: () async {
                        var url=Uri.parse("https://www.instagram.com/bidur_05/");
                        await launchUrl(url);
                      },
                      child: Image.asset('images/instagram.png'),
                    ),
                    const  SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton (
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          side: BorderSide(color: Colors.deepPurple.shade900),
                        ),
                      ),
                      onPressed: () async {
                        var url=Uri.parse("https://www.facebook.com/bidur.gupta.37");
                        await launchUrl(url);
                      },
                      child: Image.asset('images/facebook.png'),
                    ),
                  ],
                ),
             const SizedBox(
                height: 20.0,
              ),
               const  Text(
                   'Thanks for Visiting',
                    style: TextStyle(
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Signika',
                 color: Colors.purple,
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
