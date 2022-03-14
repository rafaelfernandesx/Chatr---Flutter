import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({
    Key? key,
    required this.message,
    required this.messageTime,
    required this.messageStatus,
    required this.sentByMe,
  }) : super(key: key);

  final String message;
  final String messageTime;
  final String messageStatus;
  final bool sentByMe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 5,
        bottom: 0,
      ),
      child: Align(
        alignment: sentByMe ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10),
              topRight: sentByMe
                  ? const Radius.circular(0)
                  : const Radius.circular(10),
              topLeft: sentByMe
                  ? const Radius.circular(10)
                  : const Radius.circular(0),
            ),
            color: sentByMe ? Colors.blue : Colors.indigo,
          ),
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: SelectableText(
                  message,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: sentByMe ? TextAlign.right : TextAlign.left,
                ),
              ),
              Text(
                messageTime,
                style: const TextStyle(fontSize: 12, color: Colors.white60),
              )
            ],
          ),
        ),
      ),
    );
  }
}
