import 'package:banco/components/sections/header.profile.dart';
import 'package:banco/components/sections/profile.menu.dart';
import 'package:banco/screens/login.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaderProfile(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Minha Conta", style: TextStyle(fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileMenu(text: "Meus dados", icon: Icons.account_circle, icon2: Icons.chevron_right),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileMenu(text: "Meus limites", icon: Icons.account_balance_wallet, icon2: Icons.chevron_right),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Vantagens OpenBank", style: TextStyle(fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileMenu(text: "Benefícios OpenBank", icon: Icons.star, icon2: Icons.chevron_right),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileMenu(text: "Indique e Ganhe", icon: Icons.card_giftcard, icon2: Icons.chevron_right),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Preciso de ajuda", style: TextStyle(fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileMenu(text: "Central de ajuda", icon: Icons.help, icon2: Icons.chevron_right),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Configurações", style: TextStyle(fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProfileMenu(text: "Segurança", icon: Icons.security, icon2: Icons.chevron_right),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          }, child: Text("Sair", style: TextStyle(fontSize: 20),))

        ],
      ),
    );
  }
}
