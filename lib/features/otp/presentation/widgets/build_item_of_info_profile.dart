import 'package:flutter/material.dart';


class BuildItemOfInfoProfile extends StatelessWidget {
  const BuildItemOfInfoProfile({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
