import 'package:hello_world/Models/kerajinan.dart';

class ApiStatic {
  static Future<List<Kerajinan>> getKerajinan() async {
    List<Kerajinan> kerajinan = [];
    for (var i = 0; i < 10; i++) {
      kerajinan.add(Kerajinan(
          idPenjual: i,
          nama: "Anyaman Pandan" + i.toString(),
          nik: "123" + i.toString(),
          alamat: "Desa Padangbulia" + i.toString(),
          telp: "0211",
          foto: "foto",
          idKelompok: 1,
          status: "aktif",
          namaKelompok: "RestuAbadi",
          createdAt: "",
          updatedAt: ""));
    }
    return kerajinan;
  }
}
