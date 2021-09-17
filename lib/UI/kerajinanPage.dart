//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hello_world/Models/kerajinan.dart';
import 'package:hello_world/Services/apiStatic.dart';
import 'package:hello_world/UI/detailKerajinanPage.dart';

class KerajinanPage extends StatefulWidget {
  const KerajinanPage({Key? key}) : super(key: key);

  @override
  _KerajinanPageState createState() => _KerajinanPageState();
}

class _KerajinanPageState extends State<KerajinanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Kerajinan"),
      ),
      body: FutureBuilder<List<Kerajinan>>(
        future: ApiStatic.getKerajinan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Kerajinan> listKerajinan = snapshot.data!;
            return Container(
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => DetailPetaniPage(
                                  kerajinan: listKerajinan[index],
                                )));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            border: Border.all(
                                width: 1, color: Colors.lightGreenAccent)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              listKerajinan[index].foto,
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(listKerajinan[index].nama),
                                Text(
                                  listKerajinan[index].namaKelompok,
                                  style: TextStyle(fontSize: 8),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        backgroundColor: Colors.lightGreenAccent,
        onTap: (i) {
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext context) => KerajinanPage()));
              break;

            case 1:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext context) => KerajinanPage()));
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ), // title: Text("Home")
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
          ), // title: Text("Kerajinan")
        ],
      ),
    );
  }
}
