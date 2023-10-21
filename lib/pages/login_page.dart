import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool boxChange = false;
  String name = '';
  movToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        boxChange = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        boxChange = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      decoration: InputDecoration(
                          hintText: 'Email', labelText: 'Email'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Username cannot be empty';
                        } else if (value.length < 8) {
                          return 'Email must be at least 8 digits';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password', labelText: 'Password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password cannot be empty';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 digits';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(boxChange ? 50 : 8),
                      child: InkWell(
                          onTap: () => movToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            height: 40,
                            width: boxChange ? 50 : 100,
                            alignment: Alignment.center,
                            child: boxChange
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                          )),
                    )

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
      ),
    );
  }
}
