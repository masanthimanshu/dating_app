import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: CountryCodePicker(
        onChanged: (code) {
          debugPrint(code.toString());
        },
        initialSelection: "IN",
      ),
    );
  }
}