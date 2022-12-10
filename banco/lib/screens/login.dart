
import 'package:banco/Client.dart';
import 'package:banco/Theme/theme_colors.dart';
import 'package:banco/database/app_database.dart';
import 'package:banco/screens/SignUp.dart';
import 'package:banco/screens/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();
  final _formKeyLogin = GlobalKey<FormState>();


  LoginPage({Key? key}) : super(key: key);

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyLogin,
      child: Scaffold(
        body: FutureBuilder<List<Client>>(
          future: findAll(),
          builder: (context, snapshot) {
            final List<Client>? clients = snapshot.data;
            return Container(
              padding: EdgeInsets.only(
                top: 100,
                left: 40,
                right: 40,
              ),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    width: 128,
                    height: 128,
                    child: Image.asset("assets/images/bank.png"),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "OpenBank",
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 26),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: TextFormField(
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira o e-mail';
                        }
                        return null;
                      },
                      controller: _tLogin,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: TextFormField(
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira a senha';
                        }
                        return null;
                      },
                      controller: _tSenha,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Recuperar Senha",
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if(_formKeyLogin.currentState!.validate()) {

                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Home()));
                          }
                        },

                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green[600]!)),
                        child: Text(
                          "Entrar",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignUpPage()));
                  }, child: Text("Cadastre-se"))
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: ThemeColors.headerGradient
                  )
              ),
            );
          }
        )
      ),
    );
  }
}
