import 'package:blog_app/page/list_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/blog_model.dart';
import '../widget/my_chip.dart';

class BlogDetailPage extends StatelessWidget {
  BlogDetailPage({super.key, required this.model,});

  BlogModel model;

  String content = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut tortor vitae nibh rhoncus malesuada. Donec porttitor euismod augue eget consequat. Curabitur nibh sem, consectetur quis pellentesque sed, eleifend nec leo. Curabitur placerat auctor lacus, sed luctus massa lacinia eget. Nunc ac laoreet metus, ac tempor leo. Donec viverra, odio nec faucibus lacinia, metus quam venenatis nisl, non tempor nibh quam et elit. Nulla tincidunt nulla nec metus fermentum, non euismod neque commodo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Morbi a magna vitae dui venenatis placerat vel et arcu. Aenean in libero justo. Nullam sodales eros massa, vel mattis diam elementum et. Mauris eget leo et justo auctor dignissim. Integer condimentum dolor mi, nec malesuada mauris hendrerit sed. Quisque convallis ultrices faucibus. Nam consequat mi nec arcu pulvinar, vel luctus purus fringilla.

Cras at mauris lorem. Proin sed facilisis tortor. Morbi nec convallis metus, id congue elit. Morbi scelerisque lacus ut dictum scelerisque. Proin pulvinar dolor vel molestie gravida. Morbi ac gravida leo, non eleifend enim. Nullam luctus dictum odio, sed tristique arcu feugiat sed. Morbi vestibulum sed mauris a fermentum. Ut vel risus quis justo efficitur mollis. Maecenas id eros blandit, consectetur odio a, tristique augue. Vestibulum diam nisi, dignissim in hendrerit in, aliquam fermentum sem. Sed convallis suscipit mi, nec varius risus laoreet at. Curabitur suscipit lacinia libero ac rhoncus. Cras id risus arcu. Fusce aliquet sem sit amet lorem vehicula, nec dignissim quam volutpat. Phasellus maximus et augue eu fringilla.

Donec molestie augue risus, in mollis magna faucibus a. Quisque consequat tempus risus in maximus. Sed sed arcu dapibus, porttitor elit lacinia, cursus dui. Nunc efficitur, libero quis commodo placerat, eros turpis mollis mi, id lacinia mi quam sed lacus. Pellentesque a dui non augue suscipit facilisis nec nec enim. Fusce quis mattis dui, sed bibendum augue. Nunc feugiat diam erat, et sodales risus porttitor sed. Proin non lectus sit amet orci ullamcorper scelerisque. Vivamus varius tellus at enim sagittis tincidunt. Duis tincidunt tortor et consectetur congue. Proin in ligula ut est volutpat consectetur. Aliquam vel neque id sapien pellentesque sagittis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur tincidunt tortor nec nunc gravida ultrices. Pellentesque non varius velit.

Maecenas efficitur at magna a cursus. Donec tincidunt, urna ut egestas laoreet, nunc enim scelerisque massa, at dignissim neque sem a turpis. Nulla facilisi. Vivamus pharetra ac tortor sit amet aliquam. Mauris quis venenatis erat. Vivamus sed nisi sed sem fermentum rutrum vitae at eros. Nam bibendum malesuada dapibus. Proin semper id neque sit amet tincidunt. Quisque sodales, odio quis viverra tristique, leo tellus placerat lacus, et luctus diam est eu dolor. In scelerisque, erat eget posuere suscipit, quam tortor laoreet nunc, vel feugiat justo neque viverra leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse non laoreet ligula, in facilisis sapien.

Morbi ullamcorper vel mi id scelerisque. Mauris mattis massa porta venenatis feugiat. Aliquam id purus sed lacus vestibulum semper. Praesent sed nulla consequat, fermentum tellus a, vestibulum tellus. Nulla facilisi. Curabitur pellentesque tristique porttitor. Nunc vel congue leo, in finibus ipsum. Nam viverra faucibus venenatis. Nam sed urna mauris. Donec luctus lacus orci, in dignissim ante consequat eget. Donec luctus tincidunt felis, a finibus orci porttitor sit amet. Maecenas in leo convallis, sagittis velit sed, auctor nisi. Sed mollis congue tellus eu finibus. Mauris eget vehicula nunc, vel facilisis lectus. In tempor, mi ac tristique ultricies, risus lorem commodo purus, a mollis risus tortor eu nibh.
""";

  @override
  Widget build(BuildContext context) {
    double titleHeight = 250;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: titleHeight,
            pinned: false,
            floating: true,
            snap: true,
            backgroundColor: model.chipColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.network(
                    model.imageUrl,
                    height: titleHeight + 50,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MyChip(
                              label: model.chipLabel,
                              color: model.chipColor,
                            ),
                            Text(
                              model.title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              expandedTitleScale: 1.0,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    content,
                    style: const TextStyle(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
