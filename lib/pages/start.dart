import 'package:flutter/material.dart';
import 'package:flutter_2_sub_1/pages/home_view.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    var sizePagesWidth = MediaQuery.of(context).size.width;
    var sizePagesHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(
                "assets/images/start.png",
                width: 120.0,
                height: 120.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Start your',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Journey with Books',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Let\'s get you Started',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
              ),
              child: const Text(
                'Start App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
