import 'package:flutter/material.dart';

import '../customwidgets/monsterpreview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Catalogo Monstros D&D'),
      ),
      body: ListView(
        children: const [
          MonsterPreview(),
          MonsterPreview(),
          MonsterPreview(),
          MonsterPreview(),
          MonsterPreview(),
        ],
      ),
    ));
  }
}

// createListView() {
//   return new ListView.builder(
//     itemCount: _totalMonsters
//     itemBuilder: (BuildContext context, context){
//       var values = _listaTela;
//     }
//   );
// }
// ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables, camel_case_types
