import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  Object? values;
  List listMunicipio = ["Yopal", "aguazul"];
  List tipoLugar = ["Transporte", "compras"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          expandedHeight: 100.0,
          flexibleSpace: new Image.network(
              'https://www.casanare.app/img/core-img/cd-logo_white.png'),
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.menu),
              alignment: Alignment.bottomLeft,
              onPressed: () => print('hi on icon action'),
            ),
          ],
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Todo lo que buscas está en un solo lugar'),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: DropdownButton(
                    value: values,
                    onChanged: (newValue) {
                      setState(() {
                        values = newValue;
                      });
                    },
                    items: <String>["Yopal", "aguazul"]
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
            childCount: 2,
          ),
        ),
      ],
    ));
  }
}
