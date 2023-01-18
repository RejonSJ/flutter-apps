import 'package:flutter/material.dart';

import 'widgets/bigcard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String placeholder = 'image/loading.gif';
    List<String> images = [
      'https://cdn.pixabay.com/photo/2020/04/03/20/28/nilgans-5000132_640.jpg',
      'https://cdn.pixabay.com/photo/2018/08/15/21/20/mallard-3609130_640.jpg',
      'https://cdn.pixabay.com/photo/2022/06/01/09/12/duck-7235180_640.jpg',
      'https://cdn.pixabay.com/photo/2018/10/14/23/13/mallard-3747770_640.jpg',
      'https://cdn.pixabay.com/photo/2016/06/17/13/02/ducks-1463317_1280.jpg',
      'https://cdn.pixabay.com/photo/2019/05/26/14/55/birds-4230463_640.jpg',
      'https://cdn.pixabay.com/photo/2020/03/09/08/38/eurasian-wigeon-4914971_640.jpg',
      'https://cdn.pixabay.com/photo/2021/07/20/13/46/ducks-6480791_640.jpg',
      'https://cdn.pixabay.com/photo/2020/12/10/11/34/ducks-5820051_640.jpg',
      'https://cdn.pixabay.com/photo/2013/09/22/16/56/duck-185014_640.jpg',
    ];

    return MaterialApp(
      title: 'Soccer App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Soccer App'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              ...images
                  .map((image) => BigCard(placeholder: placeholder, image: image))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}

//Shape y ShadowColor