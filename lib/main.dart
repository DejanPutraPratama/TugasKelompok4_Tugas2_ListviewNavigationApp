import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Makanan-makanan menggoda di bulan puasa',
      home: MakananMakanan(),
    );
  }
}

class MakananMakanan extends StatelessWidget {
  final List<Makanan> food= [
    Makanan(
      nama: 'Kurma',
      keterangan: 'Ini Kurma',
      foto: 'image1.png',
      Deskripsi: 'Kurma adalah jenis buah yang bisa tumbuh kapan saja sepanjang tahun.  Buah ini sering dipanen pada musim gugur atau awal musim dingin di negara asalnya ' ),
    Makanan(
      nama: 'Es Pisang Ijo',
      keterangan: 'Ini Es Pisang Ijo',
      foto: 'image2.png',
      Deskripsi: 'Es pisang ijo adalah kudapan khas dari makassar, Sulawesi Selatan.  hidangan ini diolah dari buah pisang raja, ambon, atau kepok yang sudah matang'),
    Makanan(
      nama: 'Kolak',
      keterangan: 'Ini Kolak',
      foto: 'image3.png',
      Deskripsi: 'Kolak adalah makanan penutup khas Indonesia yang berbahan dasar gula aren atau gula kelapa, santan, dan daun pandan'),
    Makanan(
      nama: 'Sop Buah',
      keterangan: 'Ini Sop Buah',
      foto: 'image4.png',
      Deskripsi: 'Sop Buah adalah sebuah Sop yang disajikan menggunakan buah sebagai bahan utama, dan bisa disajikan saat dingin'),
    Makanan(
      nama: 'Opor Ayam',
      keterangan: 'Ini Opor Ayam',
      foto: 'image5.png',
      Deskripsi: 'Opor Ayam adalah masakan sejenis kari ayam yang sangat dikenal di Indonesia.  Masakan ini telah dikenal luas di daerah lain'),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('makanan-makanan di bulan puasa'),
        ),
        body: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(food[index].foto),
              ),
              title: Text(food[index].nama),
              subtitle: Text(food[index].keterangan),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailMakanan (
                    foods: food[index],
                  ),
                ),
              );
          },
          );
          }
        ),
    );
  }
} 

class DetailMakanan extends StatelessWidget {
  final Makanan foods;

  DetailMakanan({required this.foods});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foods.nama),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              foods.foto,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 50,),
            Text(
              foods.nama,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              foods.Deskripsi,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )
          ],
        ),)
    );
  }
}

class Makanan {
  final String nama;
  final String keterangan;
  final String foto;
  final String Deskripsi;

  Makanan({required this.nama, required this.keterangan, required this.foto, required this.Deskripsi});

}

