import 'package:flutter/material.dart';

class ToLogin extends StatefulWidget {
  const ToLogin({Key? key}) : super(key: key);

  @override
  State<ToLogin> createState() => _ToLoginState();
}

class _ToLoginState extends State<ToLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return "Please enter your Name";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last name',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return 'Please enter your Last Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.length < 10) {
                      return 'Please enter your Phone number';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed('/home');
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
          ),
        )
      )
    );
  }
}
