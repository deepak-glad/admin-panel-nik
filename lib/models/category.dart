import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  String? name;
  String? thumbnailUrl;
  String? timestamp;

  Category({
    this.name,
    this.thumbnailUrl,
    this.timestamp
  });


  factory Category.fromFirestore(DocumentSnapshot snapshot){
    Map d = snapshot.data() as Map<dynamic, dynamic>;
    return Category(
      name: d['name'],
      thumbnailUrl: d['thumbnail'],
      timestamp: d['timestamp'],
    );
  }
}