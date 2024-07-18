import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  final Map<String, dynamic> article;

  NewsDetail({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article['title'] ?? 'News Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article['urlToImage'] != null)
              Image.network(article['urlToImage']),
            SizedBox(height: 8),
            Text(
              article['title'] ?? 'No Title',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(article['description'] ?? 'No Description'),
            SizedBox(height: 8),
            Text(article['content'] ?? 'No Content'),
          ],
        ),
      ),
    );
  }
}
