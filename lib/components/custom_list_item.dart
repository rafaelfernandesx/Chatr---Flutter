import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.function,
      this.widgetLast})
      : super(key: key);

  final IconData icon;
  final String title;
  final Function function;
  final Widget? widgetLast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(title);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.black54),
            const Padding(padding: EdgeInsets.all(5)),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            widgetLast ?? const Padding(padding: EdgeInsets.all(2))
          ],
        ),
      ),
    );
  }
}
