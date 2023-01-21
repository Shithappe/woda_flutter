import 'package:flutter/material.dart';

class HomeHomeTab extends StatelessWidget {
  const HomeHomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
            child: Column(
              children: [
                Card(
                  elevation: 15,
                  child: SizedBox(
                    width: 300,
                    height: 360,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset("assets/images/title_woda.png", height: 240.0),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Water',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.green[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () => Navigator.pushNamed(context, '/watershop'),
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: const [
                                    Icon(Icons.touch_app),
                                    Text('Visit')
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      elevation: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: Row(
                          children: [
                            // Expanded(child: Image.asset("assets/images/doubleBottle.png", height: 100)),
                            const Expanded(
                              flex: 3,
                              child: Text("Pomp`s",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(child:
                                OutlinedButton(onPressed: () => Navigator.pushNamed(context, '/watershop'), child:
                                const Icon(Icons.navigate_next))
                            )
                          ],
                        ),
                      )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      elevation: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: Row(
                          children: [
                            // Expanded(child: Image.asset("assets/images/doubleBottle.png", height: 100)),
                            const Expanded(
                              flex: 3,
                              child: Text("Other",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(child:
                            OutlinedButton(onPressed: () => Navigator.pushNamed(context, '/watershop'), child:
                            const Icon(Icons.navigate_next))
                            )
                          ],
                        ),
                      )
                  ),
                ),
              ],
        ),
          )
      )
    );
  }
}
