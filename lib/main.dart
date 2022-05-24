import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _salary = 50000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          //add image to your project and specify it in pubspec.yaml file
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('img/panda.jpg'),
              radius: 60,
            ),
          ),
          Divider(
            height: 60,
            thickness: 2,
            color: Colors.lightGreen,
          ),

          //name
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Name',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'Himadri Parikh',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //email / designation / city
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                    )),
                Expanded(
                  flex: 4,
                  child: Text(
                    'himadrichaudhary1314@gmail.com',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //salary
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Salary',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    '$_salary',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.lightGreen,
        onPressed: () {
          setState(() {
            _salary += 2000;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
