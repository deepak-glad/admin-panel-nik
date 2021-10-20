import 'package:cloud_firestore/cloud_firestore.dart';

class Article {

  String? category;
  String? contentType;
  String? title;
  String? description;
  String? thumbnailImagelUrl;
  String? youtubeVideoUrl;
  int? loves;
  String? sourceUrl;
  String? date;
  String? timestamp;
  int? views;

  Article({
    
    this.category,
    this.contentType,
    this.title,
    this.description,
    this.thumbnailImagelUrl,
    this.youtubeVideoUrl,
    this.loves,
    this.sourceUrl,
    this.date,
    this.timestamp,
    this.views,
    
  });


  factory Article.fromFirestore(DocumentSnapshot snapshot){
    Map d = snapshot.data() as Map<dynamic, dynamic>;
    return Article(
      category: d['category'],
      contentType: d['content type'],
      title: d['title'],
      description: d['description'],
      thumbnailImagelUrl: d['image url'],
      youtubeVideoUrl: d['youtube url'],
      loves: d['loves'],
      sourceUrl: d['source'],
      date: d['date'],
      timestamp: d['timestamp'],
      views: d['views']?? 0, 


    );
  }
}