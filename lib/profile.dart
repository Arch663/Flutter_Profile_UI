import 'package:flutter/material.dart';
import 'profile.dart';
import 'dashboard.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Dashboard(),
              ),
            )),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Profile',
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/cover.jpg'),
                ),
              ),
              Column(
                children: [
                  //Name
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Icon(
                          Icons.person,
                          size: 36,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Fahrul Rizky',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: const Color.fromARGB(255, 207, 203, 203),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  //about
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Icon(
                          Icons.info,
                          size: 36,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'About',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            '┐(￣ヘ￣;)┌',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: const Color.fromARGB(255, 207, 203, 203),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  //phone
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Icon(
                          Icons.phone,
                          size: 36,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Phone',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            '0851****9309',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: const Color.fromARGB(255, 207, 203, 203),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
