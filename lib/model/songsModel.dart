import 'package:flutter/material.dart';

class SongsModel {
  final String title;
  final String description;
  final String url;
  final String coverURL;

  SongsModel({
    required this.title,
    required this.description,
    required this.url,
    required this.coverURL,
  });

  static List<SongsModel> Songs = [
    SongsModel(
      title: 'New Release',
      description: 'new relases songs from your fav singers',
      url: '',
      coverURL: 'assets/soon/artist5.jpg',
    ),
    SongsModel(
      title: 'Love mashup 2024',
      description: 'Love mashup from 2024',
      url: '',
      coverURL: 'assets/soon/artist7.jpg',
    )
  ];
}
