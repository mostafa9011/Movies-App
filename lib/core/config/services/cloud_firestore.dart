import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFireStoreService {
  var collectionRef = FirebaseFirestore.instance.collection('movies');
  addMovie() {
    collectionRef.add({
      'title': 'mostafa',
      'id': 10,
    });
  }
}
