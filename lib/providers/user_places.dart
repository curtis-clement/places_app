import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places_app/models/place.dart';

class UserPlacesNotifierProvider extends StateNotifier<List<Place>> {
  UserPlacesNotifierProvider() : super(const []);

  void addPlace(String title) {
    final newPlace = Place(title: title);
    state = [...state, newPlace];
  }
}

final userPlacesrProvider = StateNotifierProvider<UserPlacesNotifierProvider, List<Place>>((ref) => 
  UserPlacesNotifierProvider()
);


