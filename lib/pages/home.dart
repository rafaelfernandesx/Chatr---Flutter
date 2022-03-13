import 'package:chatr/components/chat_item.dart';
import 'package:chatr/components/custom_list_item.dart';
import 'package:flutter/material.dart';
import 'package:chatr/components/gender_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            SizedBox(
              height: 150,
              child: DrawerHeader(
                padding: const EdgeInsets.only(
                    left: 15, top: 0, bottom: 0, right: 0),
                decoration: const BoxDecoration(color: Colors.indigo),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        fit: BoxFit.cover,
                        height: 85,
                        width: 85,
                        image: NetworkImage(
                            'https://pps.whatsapp.net/v/t61.24694-24/136806939_193307062499805_155835038258649366_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AVx35YnpdPH_Iq3HU66LEF95GnsNHsLTHNZ28saeqb9nYA&oe=623282C1'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Rafael 😊',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            'Man - 26',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.settings, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ListTile(
              title: Text('Looking for'),
            ),
            CustomListItem(
              icon: Gender.gender,
              title: 'Gender',
              function: () {},
              widgetLast: const Icon(Icons.woman, color: Colors.black54),
            ),
            CustomListItem(
              icon: Icons.calendar_month,
              title: 'Age Range',
              function: () {},
              widgetLast: const Text('18 - 45'),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black26,
            ),
            CustomListItem(
              icon: Icons.block,
              title: 'Blocked Users',
              function: () {},
            ),
            const Divider(
              thickness: 1,
              color: Colors.black26,
            ),
            CustomListItem(
              icon: Icons.settings,
              title: 'Settings',
              function: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          const Icon(Icons.search),
          PopupMenuButton(
              onSelected: (item) {
                print(item);
              },
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: Text("Editar perfil"),
                      value: 1,
                    ),
                    const PopupMenuItem(
                      child: Text("Remover Ads"),
                      value: 2,
                    ),
                    const PopupMenuItem(
                      child: Text("Configurações"),
                      value: 3,
                    )
                  ])
        ],
        title: const Text('Chatr'),
      ),
      body: ListView(
        children: const <Widget>[
          Chatitem(
            urlProfileImage:
                'https://pps.whatsapp.net/v/t61.24694-24/136806939_193307062499805_155835038258649366_n.jpg?stp=dst-jpg_s96x96&ccb=11-4&oh=01_AVx35YnpdPH_Iq3HU66LEF95GnsNHsLTHNZ28saeqb9nYA&oe=623282C1',
            userName: 'Rafae Fernandes',
            lastMessage: 'Oii',
            lastMessageTime: '03:24',
            messageStatus: 'visualized',
          ),
          Chatitem(
            urlProfileImage:
                'https://pps.whatsapp.net/v/t61.24694-24/266629355_3155002434728350_4753671300290519412_n.jpg?ccb=11-4&oh=344efaf36a25340aee7a6133c35994f4&oe=62329E4D',
            userName: 'Person 1',
            lastMessage: 'Td bem?',
            lastMessageTime: '01:24',
            messageStatus: 'sent',
          ),
        ],
      ),
    );
  }
}
