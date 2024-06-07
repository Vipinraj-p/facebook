import 'package:facebook/presentation/friend_req.dart';
import 'package:facebook/presentation/home_page.dart';
import 'package:facebook/presentation/menu.dart';
import 'package:facebook/presentation/notifications.dart';
import 'package:facebook/presentation/videos.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: AppBar(
                title: const Text(
                  'facebook',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 45, 94, 255)),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                ],
                bottom: TabBar(
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: -20),
                  unselectedLabelColor: Colors.black54,
                  labelColor: Color.fromARGB(255, 45, 94, 255),
                  labelStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                  dividerColor: Colors.black26,
                  indicatorColor: Color.fromARGB(255, 45, 94, 255),
                  tabs: const [
                    Tab(
                      icon: Icon(
                        Icons.home_filled,
                        size: 30,
                      ),
                      // text: 'Home',
                    ),
                    Tab(
                        icon: Icon(
                      Icons.people_outline_rounded,
                      size: 30,
                    )),
                    Tab(
                        icon: Icon(
                      Icons.ondemand_video_rounded,
                      size: 30,
                    )),
                    Tab(
                        icon: Icon(
                      Icons.notifications_none_rounded,
                      size: 30,
                    )),
                    Tab(
                        icon: Icon(
                      Icons.menu,
                      size: 30,
                    )),
                  ],
                ),
              )
              //AppBarWidget(
              //
              // )
              ),
          body: const TabBarView(children: [
            HomePg(key: Key('home')),
            FriendReq(key: Key('FriendReq')),
            Videos(key: Key('Videos')),
            Notifications(key: Key('Notifications')),
            Menu(key: Key('Menu'))
            //_buildEveryonesWatching()
          ])),
    );
  }
}
