import 'package:barber_shop/pages/sign_up_screen.dart';
import 'package:barber_shop/values/custom_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool continueConnected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.grey, Colors.white])),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    "assets/semfundo.png",
                    height: 135,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    bottom: 25,
                  )),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: Colors.white,
                            ),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      )
                    ],
                  )),
                  Padding(padding: EdgeInsets.only(bottom: 9)),
                  GestureDetector(
                    onTap: () {
                      print("FUNCIONOU");
                    },
                    child: Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Row(
                    children: [
                      Checkbox(
                        value: continueConnected,
                        activeColor: Colors.black,
                        onChanged: (bool? newValue) {
                          setState(() {
                            continueConnected = newValue ?? false;
                          });
                        },
                      ),
                      Text(
                        "Manter conectado?",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor:
                          CustomColors().getActivePrimaryButtonColor(),
                    ),
                    child: Text("Login"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      color: const Color.fromARGB(255, 12, 12, 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          "Ainda não tem uma conta?",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black),
                            minimumSize: Size(double.infinity, 40),
                          ),
                          child: Text("Cadastre-se"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
