import 'package:flutter/material.dart';

class Wisata extends StatefulWidget {
  const Wisata({super.key});

  @override
  WisataState createState() => WisataState();
}

class WisataState extends State<Wisata> {
  String keterangan = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Card(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(5)),
              Center(
                child: Text(
                  "Wisata Gili Trawangan",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    height: 75,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Expanded(
                      child: Text(
                          "Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terdapat di sebelah barat laut Lombok. Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan"))
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(hintText: "Masukkan Pendapat"),
                onChanged: (String value) {
                  setState(() {
                    keterangan = value;
                  });
                },
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
                child: SizedBox(
              height: 150,
              width: 100,
              child: Card(
                color: Colors.white,
                child: Text(
                  keterangan,
                  style: TextStyle(fontSize: 18, color: Colors.brown[400]),
                ),
              ),
            ))
          ],
        )
      ],
    );
  }
}
