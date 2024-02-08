import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home:NinjaCard()));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
            " ID Card",
          style: TextStyle(
            color:Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            setState(() {
              ninjaLevel += 1;
            });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.amberAccent,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height:60,
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            const SizedBox(height:10),
            Text(
              "A person",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              "HOMETOWN",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            const SizedBox(height:10),
            Text(
              "kigali, Rwanda",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,

              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color:Colors.grey[800],
                ),
                const SizedBox(width: 10),
                Text(
                  "hirwajoric@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[800],
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
