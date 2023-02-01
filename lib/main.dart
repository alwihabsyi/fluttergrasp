import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Elevated Button in Flutter !!';
  int currentIndex = 0;
  int buttonTapped = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Feeling Flutter"),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (buttonName == 'Elevated Button in Flutter !!') {
                      buttonName = 'U Clicked this';
                    } else if (buttonName == 'U Clicked this') {
                      buttonName = 'hey u press me again';
                    } else {
                      buttonName = 'that\'s it u can\'t press me now';
                    }
                    setState(() {
                      buttonName = buttonName;
                    });
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'Elevated Button in Flutter !!';
                    });
                  },
                  style: const ButtonStyle(),
                  child: const Icon(Icons.refresh),
                )
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 36, 206, 61),
                  size: 24.0,
                )),
            BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 205, 56, 56),
                  size: 24.0,
                ))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            index = currentIndex;
            if (index == 0) {
              setState(() {
                currentIndex = 1;
              });
            } else if (index == 1) {
              setState(() {
                currentIndex = 0;
              });
            }
          },
        ),
      ),
    );
  }
}
