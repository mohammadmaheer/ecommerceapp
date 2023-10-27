import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginscreen_maheer/forgetview.dart';
import 'package:loginscreen_maheer/signupscreen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Fashions",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
            const Text(
              "My Life My Style",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Welcome!",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "please login or sign up to continue!",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 10,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              //width: 200,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email Address",
                    border: OutlineInputBorder()),
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
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "Password",
                    border: OutlineInputBorder()),
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
              height: 5,
            ),
            Container(
                alignment: Alignment.topRight, child: Text("Forgot Password")),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                //style: ButtonStyle(textStyle: TextStyle(color: Colors.red)),
                onPressed: () {
                  onLoginPressed(context, emailController, passwordController);
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                        side: BorderSide(
                            style: BorderStyle.solid, color: Colors.black)),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            // TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (BuildContext context) => SignupView()));
            //     },
            //     child: const Text("Dont have account? SignUp",
            //         style: TextStyle(fontSize: 15, color: Colors.black)))
            Text("or"),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                //style: ButtonStyle(textStyle: TextStyle(color: Colors.red)),
                onPressed: () {
                  onLoginPressed(context, emailController, passwordController);
                },
                child: Text("Continue with Facebook"),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                        side: BorderSide(
                            style: BorderStyle.solid, color: Colors.black)),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(232, 19, 57, 139)),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                //style: ButtonStyle(textStyle: TextStyle(color: Colors.red)),
                onPressed: () {
                  onLoginPressed(context, emailController, passwordController);
                },
                child: Text(
                  "Continue with Google",
                  selectionColor: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                        side: BorderSide(
                            style: BorderStyle.solid, color: Colors.black)),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                //style: ButtonStyle(textStyle: TextStyle(color: Colors.red)),
                onPressed: () {
                  onLoginPressed(context, emailController, passwordController);
                },
                child: Text(
                  "Continue with Apple",
                  selectionColor: Colors.black,
                ),
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                        side: BorderSide(
                            style: BorderStyle.solid, color: Colors.black)),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

onLoginPressed(BuildContext context, TextEditingController email,
    TextEditingController passoword) {
  print("Email:${email.text}");
  print("Passoword:${passoword.text}");
  email.text = "";
  passoword.text = "";
}
