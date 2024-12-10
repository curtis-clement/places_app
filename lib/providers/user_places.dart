import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places_app/models/place.dart';

class UserPlacesNotifierProvider extends StateNotifier<List<Place>> {
  UserPlacesNotifierProvider() : super(const []);

  void addPlace(String title, File image) {
    final newPlace = Place(title: title, image: image);
    state = [...state, newPlace];
  }
}

final userPlacesrProvider = StateNotifierProvider<UserPlacesNotifierProvider, List<Place>>((ref) => 
  UserPlacesNotifierProvider()
);


