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
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            elevation: 0,
            padding: EdgeInsets.all(0),
          ),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
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
            icon: const Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attachment),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(235, 163, 163, 163),
          // image: DecorationImage(
          //     image: NetworkImage(
          //         'https://web.whatsapp.com/img/bg-chat-tile-dark_a4be512e7195b6b733d9110b408f075d.png'),
          //     fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: Row(
                children: [
                  ElevatedButton(
                    child: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.black26,
                      size: 30,
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(40, 40),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(0),
                      primary: Colors.white,
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
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(0),
                        primary: Colors.white,
                        elevation: 0,
                      ),
                      child: const Icon(
                        Icons.photo_camera,
                        color: Colors.black38,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(0),
                        primary: Colors.deepOrange,
                        elevation: 0,
                      ),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 30,
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
