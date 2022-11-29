import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  get _controllerName => TextEditingController();
  get _controllerLast => TextEditingController();
  get _controllerPhone => TextEditingController();
  get _formKey => GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Watter Shop",
                    style: TextStyle(
                        fontSize: 22.0,
                        height: 5.0
                    ),
                  ),
                  TextFormField(
                    controller: _controllerName,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return 'Please enter some text';
                    },
                  ),
                  // TextFormField(
                  //   controller: _controllerLast,
                  //   decoration: const InputDecoration(
                  //       labelText: 'Last name',
                  //       // hintText: 'Phone'
                  //   ),
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return 'Please enter some text';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  // TextField(
                  //   controller: _controllerPhone,
                  //   keyboardType: TextInputType.number,
                  //   maxLength: 10,
                  //   decoration: const InputDecoration(
                  //       labelText: 'Phone number',
                  //       // hintText: 'Phone'
                  //   ),
                  // ),
                  ElevatedButton(
                    // onPressed: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Processing Data')),
                    //   );
                    // },
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text("Next"))
                ],
              ),
            )
        )
    );
  }
}