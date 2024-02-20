import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 73, 43, 243),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(8),
                    title: Text(
                      'Hi Lifted!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    subtitle: Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 20,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 50,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/images.jpg',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 73, 43, 243),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                ),
              ),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 20,
                children: [
                  itemCategorioes(
                    'Vidoes',
                    CupertinoIcons.play_rectangle,
                    Colors.orange.shade600,
                  ),
                  itemCategorioes(
                    'Analytics',
                    CupertinoIcons.graph_circle,
                    Colors.green.shade600,
                  ),
                  itemCategorioes(
                    'Audience',
                    CupertinoIcons.person_2,
                    Colors.purple.shade600,
                  ),
                  itemCategorioes(
                    'Comments',
                    CupertinoIcons.chat_bubble_2,
                    Colors.brown.shade600,
                  ),
                  itemCategorioes(
                    'Revenue',
                    CupertinoIcons.money_dollar_circle,
                    Colors.indigo.shade600,
                  ),
                  itemCategorioes(
                    'Upload',
                    CupertinoIcons.add_circled,
                    Colors.teal.shade600,
                  ),
                  itemCategorioes(
                    'About',
                    CupertinoIcons.question_circle,
                    Colors.blue.shade600,
                  ),
                  itemCategorioes(
                    'Contact',
                    CupertinoIcons.question_circle,
                    Colors.pinkAccent,
                  ),
                  itemCategorioes(
                    'Settings',
                    CupertinoIcons.settings_solid,
                    Colors.tealAccent,
                  ),
                  itemCategorioes(
                    'History',
                    CupertinoIcons.circle_filled,
                    Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  itemCategorioes(
    String title,
    IconData iconData,
    Color background,
  ) =>
      Container(
        // margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  spreadRadius: 5,
                  color: Colors.blue.shade100,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      );
}
