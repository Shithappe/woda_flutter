import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  get _controller => TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                  'Enter your phone number:',
                  style: TextStyle(fontSize: 25.0)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child:
                // TextFormField(
                //   decoration: const InputDecoration(
                //     icon: Icon(Icons.phone),
                //     hintText: 'Enter a phone number',
                //     labelText: 'Phone',
                //   ),
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please enter some text';
                //     }
                //     return null;
                //   },
                // ),
                TextField(
                  controller: _controller,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 28.0),
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.bottom,
                  maxLength: 10,
                ),
              ),
              OutlinedButton(onPressed:() {
                Navigator.pushNamed(context, '/');
              },
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    minimumSize: const Size(120.0, 40.0)
                    ),
                  child: const Text('Next'))
            ]
          )
        )
    );
  }
}
