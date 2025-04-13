import 'package:flutter/material.dart';
import 'package:newsapp/widget/category_list_view.dart';
import 'package:newsapp/widget/news_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(children: [
            TextSpan(
                text: 'News',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'Cloud',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(right: 8.0, left: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
