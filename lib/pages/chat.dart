import 'package:chatr/components/message_item.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
    required this.urlProfileImage,
    required this.userName,
  }) : super(key: key);

  final String urlProfileImage;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20,
          icon: const Icon(Icons.arrow_back),
        ),
        // IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        leadingWidth: 40,
        titleSpacing: 0,
        title: InkWell(
          onTap: () {
            print(userName);
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  urlProfileImage,
                  width: 45,
                  height: 45,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const Text(
                      'Online',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(Icons.attachment),
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
              image: NetworkImage(
                  'https://web.whatsapp.com/img/bg-chat-tile-dark_a4be512e7195b6b733d9110b408f075d.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    MessageItem(
                      message: 'hello',
                      messageTime: '10:50',
                      messageStatus: 'sent',
                      sentByMe: false,
                    ),
                    MessageItem(
                      message: 'oi',
                      messageTime: '10:51',
                      messageStatus: 'sent',
                      sentByMe: true,
                    ),
                    MessageItem(
                      message: 'Tudo bem?',
                      messageTime: '10:52',
                      messageStatus: 'visualized',
                      sentByMe: true,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(left: 5, right: 2),
                    child: Material(
                      color: Colors.transparent,
                      child: IconButton(
                        onPressed: () {
                          print('pressed');
                        },
                        splashRadius: 20,
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.black26,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration.collapsed(
                        hintText: 'Escreva uma mensagem',
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {
                        print('pressed');
                      },
                      splashRadius: 20,
                      icon: const Icon(
                        Icons.photo_camera,
                        color: Colors.black38,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(right: 5),
                    child: Material(
                      color: Colors.orange.shade700,
                      borderRadius: BorderRadius.circular(50),
                      child: IconButton(
                        onPressed: () {
                          print('pressed');
                        },
                        splashRadius: 20,
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
