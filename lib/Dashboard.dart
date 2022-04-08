import 'package:flutter/material.dart';
import 'profile.dart';
import 'dashboard.dart';
import 'login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.person,
                  size: 34,
                ),
                onPressed: (() => Navigator.push(
                  context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  )
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Calls',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)
                        ),
                      ),
                    ),
                    ]
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('images/cover.jpg'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                          Text('NAMELESS',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color:Color.fromARGB(255, 0, 0, 0)
                          ),
                          ),
                          Text('lorem Ipsum is simply dummy text',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)
                          ),
                          ),
                        ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text('08/04/2022',
                          style: TextStyle(
                            color: Color.fromARGB(255, 103, 102, 102)
                          ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5, top: 10),
                      child: Container(
                        height: 2,
                        color: const Color.fromARGB(255, 103, 102, 102),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
        );
  }
}
