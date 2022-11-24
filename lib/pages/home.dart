import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String enterName;
  List todoList = [];

  @override
  void initState() {
    super.initState();

    todoList.addAll(['Jon Crein', 'Don Maccondo']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my name is')
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todoList[index]),
                child: Card(
                  child: ListTile(title: Text(todoList[index]))
                ),
                onDismissed: (direction) {
                  setState(() {
                    todoList.removeAt(index);
                  });
                },
            );
          }
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
            height: 50.0,
            child: Row(
              children: const <Widget>[
                Icon(Icons.auto_awesome),
                Icon(Icons.sentiment_very_satisfied),
              ],
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Add name'),
              content: TextField(
                autofocus: true,
                onChanged: (String value) {
                  enterName = value;
                },
              ),
              actions: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    todoList.add(enterName);
                  });
                  Navigator.of(context).pop();
                }, child: const Text('Add')),
                ElevatedButton(onPressed: () {Navigator.of(context).pop();},
                    child: const Text('Cancel'))
              ],
            );
          });
        },
        child: const Icon(Icons.add),
      ), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
