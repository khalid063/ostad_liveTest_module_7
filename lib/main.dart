import 'package:flutter/material.dart';
import 'package:live_test_7/SecondScree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ostad Live Test 7",
      home: CounterApp(),
    );
  }

}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Counter Value : ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "$counter",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.green,
                      height: 30,
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              counter++;

                              if (counter == 5) {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Text('Congratulations!'),
                                    content: Text('Counter value is 5!'),
                                    actions: [
                                      TextButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              }
                              else if (counter == 10) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScree()));
                              }

                            });
                          }, icon: Icon(Icons.add),
                        )
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      color: Colors.red,
                      height: 30,
                      child: TextButton(
                        onPressed: (){
                          setState(() {
                            counter--;
                          });
                        }, child: Text(
                          "-",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



