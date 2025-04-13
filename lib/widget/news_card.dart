import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/news_model.dart';
class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: newsModel.image != null
                ? ExtendedImage.network(newsModel.image!,
                    height: 200, width: double.infinity, fit: BoxFit.cover)
                : ExtendedImage.network(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ANo-Image-Placeholder.svg&psig=AOvVaw1Y-J24gFlpeUNUycgEtBQe&ust=1710906693632000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCMi2ypO2_4QDFQAAAAAdAAAAABAI')),
        Text(
          newsModel.title,
          maxLines: 2,
          style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        Text(
          newsModel.description ?? 'no description',
          maxLines: 2,
          style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              overflow: TextOverflow.ellipsis),
        )
      ],
    );
  }
}
