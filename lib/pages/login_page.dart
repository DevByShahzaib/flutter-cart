import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              'assets/images/img.png',
            ),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'password'),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Login'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
