import 'package:blog_app/page/detail_page.dart';
import 'package:flutter/material.dart';

import '../model/blog_model.dart';
import '../widget/my_chip.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          _buildCard(
            context: context,
            model: BlogModel(
              imageUrl:
                  "https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg",
              title: "Bir yazılımcının yol haritası",
              content:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
              chipLabel: "Teknoloji",
              chipColor: Colors.redAccent,
            ),
          ),
          _buildCard(
            context: context,
            model: BlogModel(
              imageUrl:
                  "https://www.explore.com/img/gallery/the-50-most-incredible-landscapes-in-the-whole-entire-world/intro-1672072042.jpg",
              title: "Bir yazılımcının yol haritası",
              content:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
              chipLabel: "Yazılım",
              chipColor: Colors.orangeAccent.shade400,
            ),
          ),
          _buildCard(
            context: context,
            model: BlogModel(
              imageUrl:
                  "https://static.vecteezy.com/system/resources/thumbnails/029/592/352/small_2x/landscape-with-country-road-empty-asphalt-road-on-sunset-background-multicolor-vibrant-outdoors-horizontal-image-generative-ai-illustration-free-photo.jpg",
              title: "Bir yazılımcının yol haritası",
              content:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec convallis ligula. Vestibulum aliquam risus et ligula porta, at posuere.",
              chipLabel: "Günlük",
              chipColor: Colors.deepPurple.shade400,
            ),
          ),
        ],
      ),
    );
  }

  Card _buildCard({
    required BuildContext context,
    required BlogModel model,
  }) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlogDetailPage(model: model),
              ));
        },
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  model.imageUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        model.content,
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: 16,
                left: 16,
                child: MyChip(
                  color: model.chipColor,
                  label: model.chipLabel,
                )),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
      title: const Text("Blog"),
      centerTitle: true,
    );
  }
}
