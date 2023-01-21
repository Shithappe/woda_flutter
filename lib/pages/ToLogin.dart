import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../store/store.dart';

class ToLogin extends StatefulWidget {
  const ToLogin({Key? key}) : super(key: key);

  @override
  State<ToLogin> createState() => _ToLoginState();
}

class _ToLoginState extends State<ToLogin> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _counter;

  String _name = "";
  String _lastName = "";
  int _phone = 0;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();

  Future<void> _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;

    setState(() {
      _counter = prefs.setInt('counter', counter).then((bool success) {
        return counter;
      });
    });
  }

  @override
  void initState() {
    super.initState();

    // _name = Store.getName();

    _counter = _prefs.then((SharedPreferences prefs) {
      return prefs.getInt('counter') ?? 0;
    });
  }

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
                  controller: nameController,
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
                  controller: lastNameController,
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
                  controller: phoneController,
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
                    onPressed: () async {
                      Store.setName(nameController.text);
                      _incrementCounter();
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed('/home');
                      }
                      // else {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       SnackBar(content: Text(_name)
                      //   );
                      // }
                    },
                    child: const Text("Next")
                ),
              Text(Store.getName("name")),
              FutureBuilder<int>(
                  future: _counter,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return const CircularProgressIndicator();
                      default: return Text('${snapshot.data}');
                        }
                    }
                  ),
              ],
            ),
          ),
        )
      )
    );
  }
}
