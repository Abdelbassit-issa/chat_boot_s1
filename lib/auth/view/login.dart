import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width:
                MediaQuery.of(context).size.width < 700
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.35,
            height: 525,
            child: Card(
              color: Colors.blueGrey.shade100,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              '''Cost Accountant''',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.shade300,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "L",
                                style: TextStyle(
                                  fontSize: 75,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade900,
                                ),
                              ),
                              Text(
                                "ogin",
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey.shade300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          color: Colors.blueGrey.shade50,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 21,
                              horizontal: 8,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextFormField(
                                    controller: emailController,

                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                      return null;
                                    },
                                    cursorColor: Colors.blueGrey.shade600,
                                    cursorWidth: 5,
                                    cursorRadius: const Radius.circular(1),
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontSize: 17,
                                        color: Colors.blueGrey.shade600,
                                      ),
                                      hintText: 'Email',
                                      suffixIcon: Icon(
                                        Icons.email,
                                        color: Colors.blueGrey.shade600,
                                        size: 21,
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: const EdgeInsets.all(13),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 34),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: true,
                                    enableSuggestions: false,
                                    autocorrect: false,

                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    cursorColor: Colors.grey.shade600,
                                    decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontSize: 17,
                                        color: Colors.blueGrey.shade600,
                                      ),
                                      hintText: 'Password',
                                      suffixIcon: Icon(
                                        Icons.vpn_key,
                                        color: Colors.blueGrey.shade600,
                                        size: 21,
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: const EdgeInsets.all(13),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 34),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 55),

                  TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.go('/all_chats_page');
                      }
                    },
                    child: Card(
                      color: Colors.blueGrey.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 13.0,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.blueGrey.shade800,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  dispose() {
    super.dispose();
    passwordController.dispose();
    emailController.dispose();
  }
}
