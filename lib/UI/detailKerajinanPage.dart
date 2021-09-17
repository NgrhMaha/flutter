import 'package:flutter/material.dart';
import 'package:hello_world/Models/kerajinan.dart';

class DetailPetaniPage extends StatefulWidget {
  DetailPetaniPage({required this.kerajinan});
  final Kerajinan kerajinan;

  @override
  _DetailPetaniPageState createState() => _DetailPetaniPageState();
}

class _DetailPetaniPageState extends State<DetailPetaniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kerajinan.nama),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            //image.network(widget.kerajinan.foto),
            Container(
              padding: EdgeInsets.all(5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
              ),
              child: Text(
                widget.kerajinan.nik,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.kerajinan.alamat),
            )
          ],
        ),
      ),
    );
  }
}
