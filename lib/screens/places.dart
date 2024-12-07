import 'package:flutter/material.dart';
import 'package:places_app/widgets/places_list.dart';
import 'package:places_app/screens/add_place.dart';
class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Great Places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddPlaceScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: const PlacesList(places: []),
    );
  }
}
