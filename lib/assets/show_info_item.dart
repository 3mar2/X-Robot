import 'package:flutter/material.dart';
import '../pages/cartegory_info.dart';
import 'app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String para;
  final String para2;

  const CategoryItem(
      {Key? key,
        required this.imageUrl,
        required this.title,
        required this.id,
        required this.para,
        required this.para2
      })
      : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
        CategoryCarsScreen.screenRoute,
      arguments: {
        'id' : id,
        'title' : title,
        'imageUrl' : imageUrl,
        'para' : para,
        'para2' : para2,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: AppColors.mainColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Text(
              title,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
