import 'package:banco/Client.dart';
import 'package:banco/Theme/theme_colors.dart';
import 'package:banco/database/app_database.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {

  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController lastName = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  SignUpPage({Key? key}) : super(key: key);

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(
              top: 100,
              left: 40,
              right: 40,
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: ThemeColors.headerGradient
                )
            ),
            child: ListView(
              children: [
                TextFormField(
                  validator: (String? value) {
                    if (valueValidator(value)) {
                      return 'Insira o nome';
                    }
                    return null;
                  },
                  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (valueValidator(value)) {
                      return 'Insira o sobrenome';
                    }
                    return null;
                  },
                  controller: lastName,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Sobrenome",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (valueValidator(value)) {
                      return 'Insira o e-mail';
                    }
                    return null;
                  },
                  controller: login,
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
                TextFormField(
                  validator: (String? value) {
                    if (valueValidator(value)) {
                      return 'Insira a senha';
                    }
                    return null;
                  },
                  controller: senha,
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
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      save(Client(
                          name.text,
                          lastName.text,
                          login.text,
                          senha.text));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Cadastro realizado com sucesso!'),
                        ),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Cadastrar'),
                ),
              ],
            ),
    ),
        ));
  }
}
