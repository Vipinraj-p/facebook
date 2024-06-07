import 'package:facebook/constants/constants.dart';
import 'package:flutter/material.dart';

class FriendReq extends StatelessWidget {
  const FriendReq({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(
              children: [
                Row(children: [
                  const Text('Friends',
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
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(52, 110, 110, 110),
                          foregroundColor: Colors.black,
                          shadowColor: Colors.transparent),
                      child: const Text('Suggestions'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(52, 110, 110, 110),
                          foregroundColor: Colors.black,
                          shadowColor: Colors.transparent),
                      child: const Text('Your Friends'),
                    )
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Text('Friend requests  ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18)),
                    Text('3',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                            fontSize: 18)),
                    Spacer(),
                    Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                            fontSize: 16)),
                  ],
                ),
                kheight20,
              ],
            ),
            FriendRequestWidget(
                size: size,
                profileImage:
                    'https://imgs.search.brave.com/c_HHxvt1-qQ4daGYmSHPcd6WWJiahoX9FvkB-hfx56A/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9ldmVy/LXRoaW5rLXlvdS1s/b29rLWJldHRlci1p/bi1hLXNlbGZpZS12/LWEtcGljLXNvbWVv/bmUtcy10YWtlbi0x/NjUzOTkzMjk0Lmpw/Zz9jcm9wPTEuMDB4/dzowLjU2MnhoOzAs/MC4zMjV4aCZyZXNp/emU9NjQwOio',
                profileName: 'Sneha',
                ago: '7d'),
            kheight,
            FriendRequestWidget(
                size: size,
                profileImage:
                    'https://media.vanityfair.com/photos/6352dab415d4381c39510d93/master/w_2560%2Cc_limit/midnights_frontimage4.JPG',
                profileName: 'Selena',
                ago: '45d'),
            kheight,
            FriendRequestWidget(
              size: size,
              profileImage:
                  'https://5.imimg.com/data5/GK/UI/MY-77641215/menmodelling-1000x1000.jpg',
              profileName: 'Shahin',
              ago: '1y',
            ),
            const Divider(),
            kheight,
            Row(children: [
              Text('People you may know',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 18)),
            ]),
            kheight,
            FriendRequestWidget(
              size: size,
              profileImage:
                  'https://scontent.fcok10-4.fna.fbcdn.net/v/t39.30808-6/428607530_424727663341788_7883587193298844948_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=j5T9G0oshY4Q7kNvgFqi-83&_nc_ht=scontent.fcok10-4.fna&oh=00_AYCohVa5IVSRaBHr9u2u_Mm5uTD0lZ9QnBco_SgFXPMfMg&oe=66652CE5',
              profileName: 'Aflah Labeeb',
              buttonText: 'Add friend',
            ),
            kheight,
            FriendRequestWidget(
              size: size,
              profileImage:
                  'https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQAAAA?rs=1&pid=ImgDetMain',
              profileName: 'Jacob',
              buttonText: 'Add friend',
            )
          ],
        ),
      ),
    );
  }
}

class FriendRequestWidget extends StatelessWidget {
  const FriendRequestWidget({
    super.key,
    required this.size,
    required this.profileImage,
    required this.profileName,
    this.ago = '',
    this.buttonText = 'Confirm',
  });
  final String profileImage, profileName, ago, buttonText;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(profileImage),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(profileName,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      Text(ago,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54)),
                    ],
                  ),
                ),
                kheight,
                Row(children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(size.width * .35, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: const Color.fromARGB(255, 45, 94, 255),
                        foregroundColor: Colors.white,
                        shadowColor: Colors.transparent),
                    child: Text(buttonText),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width * .35, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor:
                              const Color.fromARGB(255, 196, 196, 196),
                          foregroundColor: Colors.black,
                          shadowColor: Colors.transparent),
                      child: const Text('Delete'))
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
