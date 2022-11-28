import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
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
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "Please enter your Name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Last name',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return 'Please enter your Last Name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: const InputDecoration(
                      labelText: 'Phone number',
                  ),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'Please enter your Phone number';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Navigator.of(context).pushNamed('/home');
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("пидорас"))
                        );
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Enter all filed"))
                        );
                      }
                    },
                    child: const Text("Next")
                )
              ],
            ),
          )
      )
    );
  }
}