import 'package:flutter/material.dart';

import '../widgets/my_drawer/my_drawer.widget.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: const Center(
        child: Text("Página de mensagens"),
      ),
    );
  }
}
