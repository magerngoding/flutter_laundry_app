// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:d_button/d_button.dart';
import 'package:d_input/d_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_laundry_app/config/app_assets.dart';
import 'package:flutter_laundry_app/config/app_colors.dart';
import 'package:flutter_laundry_app/config/app_constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final edtUsername = TextEditingController();
  final edtEmail = TextEditingController();
  final edtPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  execute() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.bgAuth,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // group colum ke 1
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        AppConstants.appName,
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 5.0,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            AspectRatio(
                              // mengatur lebar&tinggi icon sama rata
                              aspectRatio: 1,
                              child: Material(
                                color: Colors.white70,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: DInput(
                                controller: edtUsername,
                                fillColor: Colors.white70,
                                hint: 'Username',
                                radius: BorderRadius.circular(10),
                                validator: (input) =>
                                    input == '' ? "Don't empty!" : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            AspectRatio(
                              // mengatur lebar&tinggi icon sama rata
                              aspectRatio: 1,
                              child: Material(
                                color: Colors.white70,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: DInput(
                                controller: edtEmail,
                                fillColor: Colors.white70,
                                hint: 'Email',
                                radius: BorderRadius.circular(10),
                                validator: (input) =>
                                    input == '' ? "Don't empty!" : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            AspectRatio(
                              // mengatur lebar&tinggi icon sama rata
                              aspectRatio: 1,
                              child: Material(
                                color: Colors.white70,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.key,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Expanded(
                              child: DInputPassword(
                                controller: edtPassword,
                                fillColor: Colors.white70,
                                hint: 'Password',
                                radius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: DButtonFlat(
                                onClick: () {
                                  Navigator.pop(context);
                                },
                                padding: const EdgeInsets.all(0),
                                radius: 10,
                                mainColor: Colors.white70,
                                child: const Text(
                                  'LOG',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                                child: ElevatedButton(
                              onPressed: () => execute(),
                              style: const ButtonStyle(
                                alignment: Alignment.centerLeft,
                              ),
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
