import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_homeTab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String enterName;
  List todoList = [];
  int currentIndex = 0;
  final mainScreens = [
    // Center(child: Text('home')),
    homeHomeTab(),
    Center(child: Text('sale')),
    Center(child: Text('cash'))
  ];

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
      body: mainScreens[currentIndex],
      // ListView.builder(
      //     itemCount: todoList.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return Dismissible(
      //           key: Key(todoList[index]),
      //           child: Card(
      //             child: ListTile(title: Text(todoList[index]))
      //           ),
      //           onDismissed: (direction) {
      //             setState(() {
      //               todoList.removeAt(index);
      //             });
      //           },
      //       );
      //     }
      // ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.percent),
              label: 'Sale',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: 'Cash',
            ),
          ],
        ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   child: SizedBox(
      //       height: 50.0,
      //       child: Row(
      //         children: <Widget>[
      //           Padding(
      //             padding: const EdgeInsets.only(left: 10.0),
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               children: const [
      //                 Icon(Icons.home),
      //                 Text('Home')
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               children: const [
      //                 Icon(Icons.home),
      //                 Text('Home')
      //               ],
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               children: const [
      //                 Icon(Icons.home),
      //                 Text('Home')
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(context: context, builder: (BuildContext context) {
      //       return AlertDialog(
      //         title: const Text('Add name'),
      //         content: TextField(
      //           autofocus: true,
      //           onChanged: (String value) {
      //             enterName = value;
      //           },
      //         ),
      //         actions: [
      //           ElevatedButton(onPressed: () {
      //             setState(() {
      //               todoList.add(enterName);
      //             });
      //             Navigator.of(context).pop();
      //           }, child: const Text('Add')),
      //           ElevatedButton(onPressed: () {Navigator.of(context).pop();},
      //               child: const Text('Cancel'))
      //         ],
      //       );
      //     });
      //   },
      //   child: const Icon(Icons.add),
      // ), floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
