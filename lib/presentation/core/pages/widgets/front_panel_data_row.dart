import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';

class FrontPanelDataRow extends StatelessWidget {
  const FrontPanelDataRow({
    Key key,
    @required this.title,
    @required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(color: Palette.subtitle),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: content,
            ),
          ),
        ],
      ),
    );
  }
}
