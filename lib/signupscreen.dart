import 'package:flutter/material.dart';
import 'package:loginscreen_maheer/loginscreen.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Register",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //width: 200,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "First Name", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //width: 200,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Last Name", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //width: 200,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //width: 200,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //width: 200,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Confirm Password", border: OutlineInputBorder()),
              ),
            ),

            // InkWell(
            //     focusColor: Colors.green.shade200,
            //     onTap: () => {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (BuildContext context) => ForgotView()))
            //         }),

            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 30,
              child: ElevatedButton(
                //style: ButtonStyle(textStyle: TextStyle(color: Colors.red)),
                onPressed: () {
                  print("Email:${emailController.text}");
                  print("Password:${passwordController.text}");
                  emailController.text = "";
                  passwordController.text = "";
                },
                child: Text("Register"),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                        side: BorderSide(
                            style: BorderStyle.solid, color: Colors.black)),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginView()));
                },
                child: const Text("Already have an account? Login",
                    style: TextStyle(fontSize: 15, color: Colors.black)))
          ],
        ),
      ),
    );
  }
}
