import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movies_app/core/config/models/movie_model.dart';

class FireStoreService {
  CollectionReference<MovieModel> getCollectionRef() {
    var db = FirebaseFirestore.instance;
    return db.collection('movies').withConverter<MovieModel>(
          fromFirestore: (snapshot, options) =>
              MovieModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toFirestore(),
        );
  }

  Future<void> addMovieToFavorite(MovieModel movie) {
    var collectionRef = getCollectionRef();
    var docRef = collectionRef.doc();
    movie.cloudId = docRef.id;
    movie.isFavorite = true;
    return docRef.set(movie);
  }

  Future<void> deleteMovieFromFavorite(String cloudId) {
    var collectionRef = getCollectionRef();
    return collectionRef.doc(cloudId).delete();
  }

  Stream<QuerySnapshot<MovieModel>> getStreamFavMovies() {
    var collectionRef = getCollectionRef();
    return collectionRef.snapshots(
      includeMetadataChanges: true,
    );
  }
}
