import 'package:chatr/pages/chat.dart';
import 'package:flutter/material.dart';

class Chatitem extends StatelessWidget {
  const Chatitem({
    Key? key,
    required this.urlProfileImage,
    required this.userName,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.messageStatus,
  }) : super(key: key);

  final String urlProfileImage;
  final String userName;
  final String lastMessage;
  final String lastMessageTime;
  final String messageStatus;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ChatPage(userName: userName, urlProfileImage: urlProfileImage),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Colors.black12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  urlProfileImage,
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(lastMessageTime)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          MessageStatus(status: messageStatus),
                          Text(lastMessage),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MessageStatus extends StatelessWidget {
  const MessageStatus({Key? key, required this.status}) : super(key: key);

  final String status;

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case 'visualized':
        return const Icon(Icons.check, color: Colors.green);
      case 'sent':
        return const Icon(Icons.check, color: Colors.grey);
      default:
        return const Text('');
    }
  }
}

/*
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
*/
