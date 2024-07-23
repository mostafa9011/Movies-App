import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/core/config/views_route_name.dart';
import '../../../layout/manager/home_layout_cubit.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      color: const Color(0xff1D1E1D),
      child: Row(
        children: [
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              BlocProvider.of<HomeLayoutCubit>(context).selectedIndex = 0;
              Navigator.pushReplacementNamed(
                context,
                ViewsRouteName.homeLayoutView,
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Text(
              title,
              style: Constants.theme.textTheme.bodyLarge,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
