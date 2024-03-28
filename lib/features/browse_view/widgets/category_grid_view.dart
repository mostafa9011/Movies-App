import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/features/browse_view/widgets/category.dart';
import 'package:movies_app/features/browse_view/widgets/category_model.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categoryList = Constants.categoryList;
    return Expanded(
      child: GridView.builder(
        itemCount: categoryList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 16, // Spacing between columns
          mainAxisSpacing: 16, // Spacing between rows
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          return Category(
            title: categoryList[index].title,
            image: categoryList[index].image,
          );
        },
      ),
    );
  }
}
