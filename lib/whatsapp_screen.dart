import 'package:flutter/material.dart';

class WhatsappScreen extends StatefulWidget {
  const WhatsappScreen({super.key});

  @override
  State<WhatsappScreen> createState() => _WhatsappScreenState();
}

class _WhatsappScreenState extends State<WhatsappScreen> {
  var s = "start";
  var a = 0;
  var c = Colors.pink;
  var d = Colors.teal.shade900;
  var bg = Colors.white;

  // void message(int a) {
  //   if (a % 2 == 0) {
  //     bg = c;
  //   } else {
  //     bg = d;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: d,
        title: const Text(
          "WhatsApp Screen",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: a,
        itemBuilder: (context, index) {
          return Container(
            color: d,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/image.jpeg"),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Message",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade900,
        onPressed: () {
          a++;

          // message(a);
          setState(
            () {
              //   if (a % 2 == 0) {
              //     bg = c;
              //   } else {
              //     bg = d;
              //   }
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
