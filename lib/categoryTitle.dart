import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_showcase/categories.dart';
import 'package:flutter_showcase/categoryScreen.dart';
import 'package:flutter_showcase/shared.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({required this.category,
    required this.imageUrl,
    this.imageAlignment = Alignment.center,
    Key? key})
      : super(key: key);
  final String imageUrl;
  final CategoryModel category;

  final Alignment imageAlignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          pushScreen(
            context: context,
            screen: CategoryScreen(
              category: category,
            ),
          ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              imageUrl,
              color: Colors.grey[200],
              colorBlendMode: BlendMode.darken,
              alignment: imageAlignment,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                category.title.toUpperCase(),
                style: Theme
                    .of(context)
                    .textTheme
                    .headline4!
                    .copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
