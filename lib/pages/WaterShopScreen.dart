import 'package:flutter/material.dart';

class WaterShop extends StatefulWidget {
  const WaterShop({Key? key}) : super(key: key);

  @override
  State<WaterShop> createState() => _WaterShopState();
}

class _WaterShopState extends State<WaterShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Water'),
      ),
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
                  child: Column(
                    children: [
                      Image.asset("assets/images/bottle.png", height: 240),
                      const Text("Water",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      const Text("350 грн"),
                      ElevatedButton(onPressed: () {}, child:
                        const Text("Buy",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
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
                    child: Column(
                      children: [
                        Image.asset("assets/images/doubleBottle.png", height: 240),
                        const Text("Water",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        const Text("350 грн"),
                        ElevatedButton(onPressed: () {}, child:
                        const Text("Buy",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
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
                    child: Column(
                      children: [
                        Image.asset("assets/images/BottlewithPoump.png", height: 240),
                        const Text("Water",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        const Text("350 грн"),
                        ElevatedButton(onPressed: () {}, child:
                        const Text("Buy",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
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
