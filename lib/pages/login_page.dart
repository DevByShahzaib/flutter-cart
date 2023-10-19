import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool boxChange = false;
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/images/img.png',
              ),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () async {
                        setState(() {
                          boxChange = true;
                        });
                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 40,
                          width: boxChange ? 50 : 100,
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            shape: boxChange
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                          )))

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
