import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.isActive, required this.color, this.onTap});

  final Color color;

  final bool isActive;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 20,
            ),
          )
        : InkWell(
            onTap: onTap,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
            ),
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: kColorsList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ColorItem(
          isActive: index == currentIndex,
          color: kColorsList[index],
          onTap: () {
            currentIndex = index;
            BlocProvider.of<AddNoteCubit>(context).color = kColorsList[index];
            setState(() {});
          },
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 5,
      ),
    );
  }
}
