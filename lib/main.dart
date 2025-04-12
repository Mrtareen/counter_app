import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  CounterAppState createState() => CounterAppState(); // Updated: Removed the leading underscore to make it public
}

class CounterAppState extends State<CounterApp> {
  // Counter variable to track the count value
  int counter = 0; // Updated: Removed the leading underscore to make it public

  // Function to increment the counter
  void incrementCounter() {
    setState(() {
      counter++; // Updated: Removed the leading underscore
    });
  }

  // Function to decrement the counter
  void decrementCounter() {
    setState(() {
      // Ensures the counter doesn't go below zero
      if (counter > 0) { // Updated: Removed the leading underscore
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              '$counter', // Updated: Removed the leading underscore
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20), // Adds space between the elements
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: decrementCounter, // Updated: Removed the leading underscore
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: CircleBorder(), // Makes the button circular
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(Icons.remove, size: 30, color: Colors.white),
                ),
                SizedBox(width: 20), // Space between buttons
                ElevatedButton(
                  onPressed: incrementCounter, // Updated: Removed the leading underscore
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(Icons.add, size: 30, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
