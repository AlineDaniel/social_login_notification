import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../pages/messages.page.dart';
import '../../pages/profile.page.dart';
import '../../pages/settings.page.dart';
import 'my_drawer.store.dart';

class MyDrawer extends StatelessWidget {
  final myDrawerStore = GetIt.I.get<MyDrawerStore>();

  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFFece2d3),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      FirebaseAuth.instance.currentUser!.photoURL!),
                  radius: 40,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  FirebaseAuth.instance.currentUser!.displayName!,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Observer(
            builder: (context) {
              return ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Perfil'),
                selected: myDrawerStore.selectedMenu == 1,
                onTap: () {
                  myDrawerStore.setSelectedMenu(1);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const ProfilePage(),
                    ),
                  );
                },
              );
            },
          ),
          Observer(
            builder: (context) {
              return ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favoritos'),
                selected: myDrawerStore.selectedMenu == 2,
                onTap: () {
                  myDrawerStore.setSelectedMenu(2);
                },
              );
            },
          ),
          Observer(builder: (context) {
            return ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Mensagens'),
              selected: myDrawerStore.selectedMenu == 3,
              onTap: () {
                myDrawerStore.setSelectedMenu(3);
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const MessagesPage(),
                  ),
                );
              },
            );
          }),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              "Aplicativo",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Observer(
            builder: (context) {
              return ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Configurações'),
                selected: myDrawerStore.selectedMenu == 4,
                onTap: () {
                  myDrawerStore.setSelectedMenu(4);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SettingsPage(),
                    ),
                  );
                },
              );
            },
          ),
          Observer(builder: (context) {
            return ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Sobre'),
              selected: myDrawerStore.selectedMenu == 5,
              onTap: () {
                myDrawerStore.setSelectedMenu(5);
              },
            );
          }),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sair'),
            onTap: () {},
          ),
          const Spacer(),
          const SafeArea(
            child: Center(
              child: Text("versão 1.0.0"),
            ),
          )
        ],
      ),
    );
  }
}
