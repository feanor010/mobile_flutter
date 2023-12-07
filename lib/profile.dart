import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 300,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color.fromRGBO(8, 166, 82, 1)),
          actions: const [
            Padding(
              padding: EdgeInsets.only(bottom: 170, right: 20),
              child: Icon(
                Icons.logout,
              ),
            ),
          ],
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Center(
                  child: Image.asset(
                    '../assets/img/ava.png',
                    fit: BoxFit.contain,
                    width: 110,
                  ),
                ),
              ),
              const Text('Екатерина',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              // const Row(children: [
              //   Text("Профиль"),
              //   Padding(padding: EdgeInsets.only(left: 10)),
              //   Text("Настройки")
              // ])
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            tabs: const [
              Tab(text: 'Профиль'),
              Tab(text: 'Настройки'),
            ],
          ),
          leading: const Padding(
            padding: EdgeInsets.only(bottom: 170, left: 20),
            child: Icon(
              Icons.close,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          children: const [
            Text(
              "У вас подключено",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text()
          ],
        ));
  }
}
