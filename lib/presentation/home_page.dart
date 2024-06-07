import 'package:facebook/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePg extends StatelessWidget {
  const HomePg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(
            maxRadius: 20,
            backgroundImage: AssetImage('asset/DP10.jpg'),
          ),
          title: SizedBox(
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Write something here...",
              ),
            ),
          ),
          trailing: const Icon(
            Icons.photo_library_outlined,
            color: Colors.green,
          ),
        ),
        const Divider(
          thickness: 4,
          color: Colors.black26,
        ),
        const SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                      height: 220,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 239, 246, 250),
                          image: const DecorationImage(
                              image: AssetImage('asset/DP10.jpg'),
                              alignment: Alignment.topCenter))),
                  const Padding(
                    padding: EdgeInsets.only(left: 43, top: 105),
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 239, 246, 250),
                        child: Icon(
                          Icons.add_circle_rounded,
                          size: 40,
                          color: Color.fromARGB(255, 45, 94, 255),
                        )),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 5,
                    right: 5,
                    child: Text(
                      'Create Story',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              kwidth,
              const _story(
                ImageUrl:
                    'https://imgs.search.brave.com/c_HHxvt1-qQ4daGYmSHPcd6WWJiahoX9FvkB-hfx56A/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9ldmVy/LXRoaW5rLXlvdS1s/b29rLWJldHRlci1p/bi1hLXNlbGZpZS12/LWEtcGljLXNvbWVv/bmUtcy10YWtlbi0x/NjUzOTkzMjk0Lmpw/Zz9jcm9wPTEuMDB4/dzowLjU2MnhoOzAs/MC4zMjV4aCZyZXNp/emU9NjQwOio',
                name: 'Amal',
              ),
              const _story(
                ImageUrl:
                    'https://imgs.search.brave.com/fTZoducdAI5VTzesAwuxDx1BihKHv1Rd8ygeifdNFGE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2M0LzJi/LzAyL2M0MmIwMjZh/NDI2NjJhNGE2YmFm/YzBkM2FmZTEzODM1/LmpwZw',
                name: 'Jis Joy',
              ),
              const _story(
                ImageUrl:
                    'https://imgs.search.brave.com/OKvWTnRxWCAfZOktu_NcwpyqvXKgfz8Qo1DNdIAAets/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9leHBl/cnRwaG90b2dyYXBo/eS5iLWNkbi5uZXQv/d3AtY29udGVudC91/cGxvYWRzLzIwMjIv/MDMvU2VsZmllLVBv/c2VzLUF0bW9zcGhl/cmUuanBn',
                name: 'Sharon',
              ),
              const _story(
                ImageUrl:
                    'https://imgs.search.brave.com/7YMZBM4-iI5LigTTREm9BrZQbBqh3rxPvXOHMrH-jhU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2UyLzBi/LzczL2UyMGI3MzJm/NTg4MTUzYTQ2ZDY0/YzYxNzgwOTU1NDIw/LmpwZw',
                name: 'Anitha',
              ),
              const _story(
                ImageUrl:
                    'https://imgs.search.brave.com/y0oOqIJEGWEHlm7sycAX9rdtAJl2LQWRWNWFtG6UU0o/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9leHBl/cnRwaG90b2dyYXBo/eS5iLWNkbi5uZXQv/d3AtY29udGVudC91/cGxvYWRzLzIwMjIv/MDMvU2VsZmllLVBv/c2VzLUZ1bGwtQm9k/eS5qcGc',
                name: 'Philip',
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        const Divider(
          thickness: 4,
          color: Colors.black26,
        ),
        const SizedBox(height: 5),
        Post(
          name: 'Sophia',
          ImgUrl:
              'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1691204869798-SDK5E49VFO6GI3NNWUUR/Corporate_1.jpg?format=750w',
        ),
        Post(
            name: 'John',
            ImgUrl:
                'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1691204890582-77AXUPJAJ7BL8MOWQZU0/CorporateHeadshot_1.jpg?format=750w'),
        Post(
            name: 'Abraham',
            ImgUrl:
                'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1689383368716-X47BMRO7UU5Y1L8006RJ/25.jpg?format=750w'),
        Post(
            name: 'Sneha',
            ImgUrl:
                'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1689390706424-4QSCM0EXGULYNU10TSIL/08_low.jpeg?format=750w'),
        Post(
            name: 'Sharon',
            ImgUrl:
                'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1689383375251-Z7PB0C329NQR5440H70Z/30.jpg?format=750w'),
      ],
    ));
  }
}

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.ImgUrl,
    required this.name,
  });
  final String ImgUrl, name;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(ImgUrl)
                  //'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1691204869798-SDK5E49VFO6GI3NNWUUR/Corporate_1.jpg?format=750w'),
                  ),
              title: Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: const Row(
                children: [
                  Text('1d . '),
                  Icon(
                    Icons.south_america,
                    size: 16,
                  ),
                ],
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ),
            Image.network(ImgUrl),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 10,
                          backgroundColor: Color.fromARGB(255, 45, 94, 255),
                          child: Icon(
                            Icons.thumb_up_alt,
                            color: Colors.white,
                            size: 12,
                          )),
                      Text(' 802',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54)),
                      Spacer(),
                      Text('195 comments',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54))
                    ],
                  ),
                  Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LikeShareIconWidget(
                          icon: Icons.thumb_up_alt_outlined,
                          text: 'Like',
                        ),
                        LikeShareIconWidget(
                          icon: Icons.mode_comment_outlined,
                          text: 'Comment',
                        ),
                        LikeShareIconWidget(
                          icon: Icons.call_outlined,
                          text: 'Send',
                        ),
                        LikeShareIconWidget(
                          icon: Icons.near_me,
                          text: 'Share',
                        ),
                      ])
                ],
              ),
            ),
            Divider(
              thickness: 4,
              color: Colors.black26,
            ),
          ],
        ));
  }
}

class LikeShareIconWidget extends StatelessWidget {
  const LikeShareIconWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black54,
          size: 18,
        ),
        Text(' $text',
            style:
                TextStyle(fontWeight: FontWeight.w400, color: Colors.black54))
      ],
    );
  }
}

class _story extends StatelessWidget {
  const _story({
    super.key,
    required this.ImageUrl,
    required this.name,
  });
  final String ImageUrl, name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
                height: 220,
                width: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 239, 246, 250),
                    image: DecorationImage(
                        image: NetworkImage(ImageUrl),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter))),
            Positioned(
              bottom: 10,
              left: 5,
              right: 5,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        kwidth,
      ],
    );
  }
}
