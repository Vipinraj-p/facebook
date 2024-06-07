import 'package:facebook/constants/constants.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 241, 243),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Row(children: [
                const Text('Menu',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 24)),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 26,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 26,
                    )),
              ]),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const Row(
                  children: [
                    kwidth,
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/DP10.jpg'),
                    ),
                    kwidth,
                    Text('Christopher',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18)),
                    Spacer(),
                    Icon(
                      Icons.swap_horizontal_circle_outlined,
                      color: Color.fromARGB(255, 23, 41, 48),
                      size: 28,
                    ),
                    kwidth,
                    Icon(
                      Icons.expand_circle_down_rounded,
                      color: Color.fromARGB(255, 23, 41, 48),
                      size: 28,
                    ),
                    kwidth,
                  ],
                ),
              ),
              kheight,
              const Text('Your Shortcuts',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14)),
              kheight,
              Stack(
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(111, 137, 140, 141)),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 70,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 50),
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.flag,
                        color: Colors.red[400],
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              const Text('_Chistapher_',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                      fontSize: 12)),
              kheight20,
              SizedBox(
                width: double.infinity,
                height: 350,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 80,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  children: [
                    const MenuWidget(
                        ImageUrl:
                            'https://cdn-icons-png.flaticon.com/512/2595/2595175.png',
                        title: 'Memories'),
                    const MenuWidget(
                        ImageUrl:
                            'https://cdn-icons-png.flaticon.com/512/2731/2731143.png',
                        title: 'Saved'),
                    const MenuWidget(
                        ImageUrl:
                            'https://cdn-icons-png.flaticon.com/512/12965/12965788.png',
                        title: 'Groups'),
                    const MenuWidget(
                        ImageUrl:
                            'https://img.freepik.com/premium-vector/video-icon-png_564384-149.jpg',
                        title: 'Video'),
                    const MenuWidget(
                        ImageUrl:
                            'https://cdn-icons-png.flaticon.com/512/2422/2422258.png',
                        title: 'Marcketplace'),
                    const MenuWidget(
                        ImageUrl:
                            'https://www.pikpng.com/pngl/b/333-3339750_png-file-svg-friend-request-icon-png-clipart.png',
                        title: 'Friends'),
                    const MenuWidget(
                        ImageUrl:
                            'https://cdn-icons-png.flaticon.com/512/906/906338.png',
                        title: 'Feeds'),
                    const MenuWidget(
                        ImageUrl:
                            'https://cdn-icons-png.flaticon.com/512/1458/1458512.png',
                        title: 'Events')
                  ],
                ),
              ),
              kheight,
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
                      foregroundColor: Colors.black,
                      shadowColor: Colors.transparent),
                  child: const Text('See more')),
              kheight20,
              const Divider(),
              const ListTile(
                minTileHeight: 10,
                leading: CircleAvatar(
                  radius: 16,
                  backgroundColor: Color.fromARGB(255, 186, 207, 212),
                  child: Icon(Icons.question_mark_sharp),
                ),
                title: Text('Help & Support',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16)),
                trailing: Icon(Icons.expand_more),
              ),
              const Divider(),
              const ListTile(
                minTileHeight: 10,
                leading: Icon(
                  Icons.settings,
                  size: 30,
                  color: Color.fromARGB(255, 133, 182, 194),
                ),
                title: Text('Settings & Privacy',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16)),
                trailing: Icon(Icons.expand_more),
              ),
              const Divider(),
              const ListTile(
                minTileHeight: 10,
                leading: Icon(
                  Icons.grid_view_rounded,
                  color: Color.fromARGB(255, 133, 182, 194),
                ),
                title: Text('Also from Meta',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16)),
                trailing: Icon(Icons.expand_more),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  final String ImageUrl, title;
  const MenuWidget({
    super.key,
    required this.ImageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              ImageUrl,
              height: 30,
            ),
            Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
