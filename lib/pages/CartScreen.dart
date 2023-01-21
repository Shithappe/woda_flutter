import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
        ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(child: Image.asset("assets/images/bottle.png", height: 100)),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: const [
                            Text("Water in big bottle",
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                            Text("350 грн",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child:
                        Column(
                          children: [
                            TextButton(onPressed: () {}, child: const Text('+', style: TextStyle(
                              fontSize: 18.0,
                            ),),),
                            const Text('1'),
                            TextButton(onPressed: () {}, child: const Text('—', style: TextStyle(
                              fontSize: 18.0,
                            ),),),
                          ],
                        )
                      )
                    ],
                  ),
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(child: Image.asset("assets/images/doubleBottle.png", height: 100)),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: const [
                              Text("Double Water",
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                              Text("350 грн",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child:
                        Column(
                          children: [
                            TextButton(onPressed: () {}, child: const Text('+', style: TextStyle(
                              fontSize: 18.0,
                            ),),),
                            const Text('2'),
                            TextButton(onPressed: () {}, child: const Text('—', style: TextStyle(
                              fontSize: 18.0,
                            ),),),
                          ],
                        )
                        )
                      ],
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
