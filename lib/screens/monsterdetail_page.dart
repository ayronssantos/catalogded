import 'package:catalogyded/customwidgets/monsterstatus.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 390,
                height: 150,
                color: Colors.black45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Nome Monstro',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                Icon(Icons.shield),
                                Text('CA'),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(Icons.heart_broken),
                                Text('Life'),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(Icons.speed),
                                Text('Speed'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('Large aberration, lawful evil')
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network(
                          'https://media-waterdeep.cursecdn.com/avatars/thumbnails/0/11/1000/1000/636238825975375671.jpeg',
                          fit: BoxFit.fill),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 450,
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        MonsterStatus(
                          str: 10,
                          dex: 20,
                          con: 12,
                          inti: 15,
                          wis: 12,
                          car: 10,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
