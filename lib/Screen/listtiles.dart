import 'package:flutter/material.dart';

class ListTiles extends StatefulWidget {
  const ListTiles({super.key});

  @override
  State<ListTiles> createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListTiles'),
        ),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.accessible_forward),
              title: const Text('Aashutosh'),
              subtitle: const Text('Chabahil'),
              trailing: Wrap(
                spacing: 8,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon((Icons.star))),
                  IconButton(
                      onPressed: () {}, icon: const Icon((Icons.delete))),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('Shreyan'),
              subtitle: Text('hetauda'),
              trailing: Icon(Icons.delete),
            ),
            const ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('Pratima'),
              subtitle: Text('kalimati'),
              trailing: Icon(Icons.delete),
            ),
          ],
        ));
  }
}
