import 'package:flutter/material.dart';

import 'product_details.dart';
import 'product_detail_page.dart';
import '../auth/login_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-STORE ESPRIT"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            tooltip: "Déconnexion",
          ),
        ],
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailPage(
                    image: "assets/images/dmc5.jpg",
                    title: "Devil May Cry 5",
                    price: 200,
                  ),
                ),
              );
            },
            child: ProductDetails("assets/images/dmc5.jpg", "Devil May Cry 5", 200),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailPage(
                    image: "assets/images/fifa.jpg",
                    title: "FIFA 22",
                    price: 100,
                  ),
                ),
              );
            },
            child: ProductDetails("assets/images/fifa.jpg", "FIFA 22", 100),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailPage(
                    image: "assets/images/re8.jpg",
                    title: "Resident Evil VIII",
                    price: 200,
                  ),
                ),
              );
            },
            child: ProductDetails("assets/images/re8.jpg", "Resident Evil VIII", 200),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailPage(
                    image: "assets/images/rdr2.jpg",
                    title: "RDR 2",
                    price: 150,
                  ),
                ),
              );
            },
            child: ProductDetails("assets/images/rdr2.jpg", "RDR 2", 150),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetailPage(
                    image: "assets/images/nfs.jpg",
                    title: "Need For Speed Heat",
                    price: 100,
                  ),
                ),
              );
            },
            child: ProductDetails("assets/images/nfs.jpg", "Need For Speed Heat", 100),
          ),
        ],
      ),
    );
  }
}
