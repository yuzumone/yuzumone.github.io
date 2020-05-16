import 'package:flutter/material.dart';

class ItemizedText extends StatelessWidget {
  const ItemizedText(
    this.texts, {
    Key key,
  }) : super(key: key);

  final List<Text> texts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: texts
          .map(
            (text) => _ItemizedTextRow(text),
          )
          .toList(),
    );
  }
}

class _ItemizedTextRow extends StatelessWidget {
  const _ItemizedTextRow(
    this.text, {
    Key key,
  }) : super(key: key);

  final Text text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '- ',
          style: text.style,
        ),
        Expanded(child: text),
      ],
    );
  }
}
