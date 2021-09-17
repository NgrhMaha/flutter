class Kerajinan {
  Kerajinan({
    required this.idPenjual,
    required this.nama,
    required this.nik,
    required this.alamat,
    required this.telp,
    required this.foto,
    required this.idKelompok,
    required this.status,
    required this.namaKelompok,
    required this.createdAt,
    required this.updatedAt,
  });

  int idPenjual;
  String nama;
  String nik;
  String alamat;
  String telp;
  String foto;
  int idKelompok;
  String status;
  String namaKelompok;
  String createdAt;
  String updatedAt;

  factory Kerajinan.fromJson(Map<String, dynamic> json) => Kerajinan(
        idPenjual: json["id_penjual"],
        nama: json["nama"].toString(),
        nik: json["nik"].toString(),
        alamat: json["alamat"].toString(),
        telp: json["telp"].toString(),
        foto: json["foto"].toString(),
        idKelompok: json["id_kelompok"],
        status: json["status"].toString(),
        namaKelompok: json["nama_kelompok"].toString(),
        createdAt: json["created_at"].toString(),
        updatedAt: json["updated_at"].toString(),
      );
}
