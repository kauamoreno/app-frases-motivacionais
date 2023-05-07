import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuBurger extends StatelessWidget {
  const MenuBurger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          
          //Header do Drawer
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect( //ClipRRect - Serve para 'cortar' os filhos
              
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/119445003?s=400&u=33a42d42afc49b3b000d556ae926331f6caaca13&v=4'
              )
              
            ),
            accountName: Text(
              'Kauã Moreno', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17
              ),
            ),
            accountEmail: Text('www.linkedin.com/in/kauamoreno/')
          ),

          ListTile(
            leading: Icon(Icons.home), //Leading - extremidade Esquerda
            title: Text('Inicio'),
            subtitle: Text('Tela de inicio'),
            onTap: () {
              print('home');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded), //Leading - extremidade Esquerda
            title: Text('Conta'),
            subtitle: Text('Opções de usuario'),
            onTap: () {
              print('Conta');
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications_active), //Leading - extremidade Esquerda
            title: Text('Notificações'),
            subtitle: Text('Gerencie as notificações'),
            onTap: () {
              print('Notificações');
            },
          ),

          Spacer(), //Oculpa todo o espaço possivel, faz com que o ultimo elemento fique no final

          ListTile(
            leading: Icon(Icons.settings), //Leading - extremidade Esquerda
            title: Text('Configurações'),
            subtitle: Text('Opções do app'),
            onTap: () {
              print('Config');
            },
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Icon(Icons.logout), //Leading - extremidade Esquerda
              title: Text('Sair'),
              onTap: () {
                print('Sair');
              },
            ),
          ),
        ],
      ),
    );
  }
}
