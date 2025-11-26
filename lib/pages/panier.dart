import 'package:flutter/material.dart';

class Panier extends StatefulWidget {
  const Panier({super.key});

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  final List<Map<String, dynamic>> _items = [
    {
      'title': 'Devil May Cry 5',
      'image': 'assets/images/dmc5.jpg',
      'price': 200,
    },
    {
      'title': 'RE VIII',
      'image': 'assets/images/re8.jpg',
      'price': 300,
    },
    {
      'title': 'NFS Heat',
      'image': 'assets/images/nfs.jpg',
      'price': 100,
    },
  ];

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  int _calculateTotal() {
    return _items.fold(0, (sum, item) => sum + (item['price'] as int));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panier"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            alignment: Alignment.centerRight,
            child: Text(
              "Total : ${_calculateTotal()} TND",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _items[index];
                return Card(
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          _removeItem(index);
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          item['image'],
                          width: 100,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          item['title'],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "${item['price']} TND",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

