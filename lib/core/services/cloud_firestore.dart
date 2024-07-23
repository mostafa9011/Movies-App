import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movies_app/core/config/models/movie_model.dart';

class FireStoreService {
  CollectionReference<MovieModel> getUsersCollectionRef() {
    var db = FirebaseFirestore.instance;
    return db.collection('movies').withConverter<MovieModel>(
          fromFirestore: (snapshot, options) =>
              MovieModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toFirestore(),
        );
  }

  Future<void> addMovieToFavorite(MovieModel movie) {
    var collectionRef = getUsersCollectionRef();
    var docRef = collectionRef.doc();
    movie.cloudId = docRef.id;
    return docRef.set(movie);
  }

  Future<void> deleteMovieFromFavorite(String cloudId) {
    var collectionRef = getUsersCollectionRef();
    return collectionRef.doc(cloudId).delete();
  }

  Stream<QuerySnapshot<MovieModel>> getStreamFavMovies() {
    var collectionRef = getUsersCollectionRef();
    return collectionRef.snapshots();
  }
}
