import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundColor: Colors.purple[300],
                  child: CircleAvatar(
                    radius: 85.0,
                    backgroundImage: AssetImage('images/lili.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Liliana Viana',
                style: TextStyle(
                    fontFamily: 'Bungee Inline',
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Python &',
                style: TextStyle(
                    fontFamily: 'Bungee Inline',
                    fontSize: 25.0,
                    color: Colors.purple[300]),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontFamily: 'Bungee Inline',
                    fontSize: 25.0,
                    color: Colors.purple[300]),
              ),
              SizedBox(
                height: 10.0,
                width: 310.0,
                child: Divider(
                  color: Colors.purple[300],
                ),
              ),
              Card(
                elevation: 20.0,
                shadowColor: Colors.grey[900],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 40.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),
                  title: Text(
                    '+34 690 676 488',
                    style: TextStyle(
                      color: Colors.purple[300],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Code Pro',
                      fontSize: 17.5,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 20.0,
                shadowColor: Colors.grey[900],
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 40.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.purple,
                  ),
                  title: Text(
                    'pylyv@tutanota.com',
                    style: TextStyle(
                      color: Colors.purple[300],
                      fontFamily: 'Source Code Pro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Row(
//                       children: [
//                         Icon(
//                           Icons.email,
//                           color: Colors.purple,
//                         ),
//                         SizedBox(
//                           width: 30.0,
//                         ),
//                         Text(
//                           'pylyv@tutanota.com',
//                           style: TextStyle(
//                             color: Colors.purple[300],
//                             fontFamily: 'Source Code Pro',
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),

// Icon(
//                           Icons.phone,
//                           color: Colors.purple,
//                         ),
//                         SizedBox(
//                           width: 30.0,
//                         ),
//                         Text(
//                           '+34 690 676 488',
//                           style: TextStyle(
//                             color: Colors.purple[300],
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'Source Code Pro',
//                             fontSize: 17.5,
//                           ),
//                         ),
