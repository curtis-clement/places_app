import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  Place({required this.title, String? id}) : id = id ?? uuid.v4();

  final String id;
  final String title;
}
