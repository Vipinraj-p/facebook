import 'package:facebook/constants/constants.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              const Text('Notifications',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 28)),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  )),
            ]),
          ),
          kheight20,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Earlier',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16)),
          ),
          const NotificationWidget(
            leadingImage:
                'https://ideahead.co.th/wp-content/uploads/2023/03/2021_Facebook_icon.svg.png',
            icon: Icons.shield_outlined,
            Title:
                'We noticed a new login from a device or location you don\'t usually use. Please review.',
            daysAgo: 5,
          ),
          const NotificationWidget(
            leadingImage:
                'https://ideahead.co.th/wp-content/uploads/2023/03/2021_Facebook_icon.svg.png',
            icon: Icons.shield_outlined,
            Title:
                'We noticed a new login from a device or location you don\'t usually use. Please review.',
            daysAgo: 5,
          ),
          const NotificationWidget(
            leadingImage:
                'https://imgs.search.brave.com/c_HHxvt1-qQ4daGYmSHPcd6WWJiahoX9FvkB-hfx56A/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9ldmVy/LXRoaW5rLXlvdS1s/b29rLWJldHRlci1p/bi1hLXNlbGZpZS12/LWEtcGljLXNvbWVv/bmUtcy10YWtlbi0x/NjUzOTkzMjk0Lmpw/Zz9jcm9wPTEuMDB4/dzowLjU2MnhoOzAs/MC4zMjV4aCZyZXNp/emU9NjQwOio',
            icon: Icons.person_add_alt_1,
            nameOfPersons: 'Sneha',
            Title: ' sent you a friend request',
            daysAgo: 7,
          ),
          const NotificationWidget(
            leadingImage:
                'https://i.pinimg.com/originals/ba/a5/9c/baa59c5bc8f7f2eed1f62e2e761c228b.jpg',
            icon: Icons.groups,
            nameOfPersons: 'Gouri Vijeesh, Ashok R N',
            Title: ' and others posted in ',
            groupName: 'Movie Munshi',
            groupTitle: ' "#Nadikar Davidpadikkal supersta\'s life up..."',
            daysAgo: 31,
          ),
          const NotificationWidget(
            leadingImage:
                'https://media.vanityfair.com/photos/6352dab415d4381c39510d93/master/w_2560%2Cc_limit/midnights_frontimage4.JPG',
            icon: Icons.person_add_alt_1,
            nameOfPersons: 'Selena',
            Title: ' sent you a friend request',
            daysAgo: 45,
          )
        ],
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.leadingImage,
    required this.icon,
    required this.Title,
    required this.daysAgo,
    this.nameOfPersons = '',
    this.groupName = '',
    this.groupTitle = '',
  });
  final String leadingImage, Title, groupName, groupTitle;
  final String nameOfPersons;
  final IconData icon;
  final int daysAgo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.blue[50],
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(leadingImage),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 40),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: const Color.fromARGB(255, 45, 94, 255),
              child: Icon(
                icon,
                size: 14,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      title: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: nameOfPersons,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        TextSpan(
            text: Title,
            style: const TextStyle(fontSize: 14, color: Colors.black)),
        TextSpan(
            text: groupName,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        TextSpan(
            text: groupTitle,
            style: const TextStyle(fontSize: 14, color: Colors.black)),
      ])),
      subtitle: Text('$daysAgo d',
          style: const TextStyle(fontSize: 14, color: Colors.black45)),
      trailing: const Icon(Icons.more_horiz_outlined),
    );
  }
}
