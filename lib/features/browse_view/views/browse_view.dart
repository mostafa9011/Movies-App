import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import '../widgets/category_grid_view.dart';

class BrowseVeiw extends StatelessWidget {
  const BrowseVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              'Browse Category',
              style: Constants.theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            const CategoryGridView(),
          ],
        ),
      ),
    );
  }
}
