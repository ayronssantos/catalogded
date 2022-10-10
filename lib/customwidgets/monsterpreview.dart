import 'package:flutter/material.dart';
import 'monsterstatus.dart';

class MonsterPreview extends StatelessWidget {
  const MonsterPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 270,
                height: 100,
                color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Nome Monstro',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                              padding: const EdgeInsets.all(0),
                              alignment: Alignment.topRight,
                              onPressed: () {
                                Navigator.pushNamed(context, '/MonsterDetail');
                                print('funciona');
                              },
                              icon: const Icon(Icons.info_rounded))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(
                          height: 20,
                          child: Text('Raça'),
                        ),
                        SizedBox(
                          height: 20,
                          child: Text('Tendencia'),
                        ),
                      ],
                    ),
                    const MonsterStatus(
                      con: 2,
                      car: 3,
                      dex: 4,
                      inti: 5,
                      str: 2,
                      wis: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 120,
                height: 70,
                child: Image.network(
                    'https://www.aidedd.org/dnd/images/goblin.jpg',
                    fit: BoxFit.fill),
              ),
              SizedBox(
                  width: 120,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.star, color: Colors.white, size: 18),
                      Icon(Icons.star, color: Colors.white, size: 18),
                      Icon(Icons.star, color: Colors.white, size: 18),
                      Icon(Icons.star, color: Colors.white, size: 18),
                      Icon(Icons.star, color: Colors.white, size: 18),
                      Icon(Icons.star, color: Colors.white, size: 18),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
