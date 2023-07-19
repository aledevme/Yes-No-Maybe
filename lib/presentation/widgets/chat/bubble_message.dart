import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final Widget message;
  const MessageBubble(
      {super.key, required this.alignment, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(padding: EdgeInsets.all(12), child: message),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
