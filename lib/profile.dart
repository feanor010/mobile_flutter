import 'package:flutter/material.dart';
import 'package:flutter_mobile/tag.dart';
import 'package:flutter_mobile/tarifs.dart';
import 'package:flutter_mobile/subscribtion.dart';

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
          backgroundColor: Colors.white,
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
        body: Container(
          color: const Color.fromRGBO(240, 240, 240, 1),
          child: ListView(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            children: [
              const Text(
                "У вас подключено",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Подписки, автоплатежи и сервисы на которые вы подписались",
                style: TextStyle(color: Colors.black.withOpacity(0.550)),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              SizedBox(
                height: 130,
                child:
                    ListView(scrollDirection: Axis.horizontal, children: const [
                  Subscribtion(
                    titleText: "СберПрайм",
                    paymentText: "Платеж 9 июля",
                    priceText: "199₽ в месяц",
                    imagePath: "../assets/img/sberprime.png",
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Subscribtion(
                    titleText: "Переводы",
                    paymentText: "Автопродление 21 августа",
                    priceText: "199₽ в месяц",
                    imagePath: "../assets/img/percent.png",
                  ),
                ]),
              ),
              const Padding(padding: EdgeInsets.only(top: 40)),
              const Text(
                "Тарифы и лимиты",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Text(
                "Для операций в Сбербанк Онлайн",
                style: TextStyle(color: Colors.black.withOpacity(0.55)),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Tarifs(
                titleText: "Изменить суточный лимит",
                tarifInfo: "На платежи и переводы",
                imagePath: "../assets/img/speedometer.png",
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Tarifs(
                  titleText: "Переводы без комиссии",
                  tarifInfo: "Показать остаток в этом месяце",
                  imagePath: "../assets/img/percent2.png"),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Tarifs(
                  titleText: "Информация о тарифах \nи лимитах",
                  tarifInfo: " ",
                  imagePath: "../assets/img/arrows.png"),
              const Padding(padding: EdgeInsets.only(top: 40)),
              const Text("Интересы",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              Text(
                "Мы подбираем истории и предложения по темам, которые вам нравятся",
                style: TextStyle(color: Colors.black.withOpacity(0.55)),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Wrap(
                spacing: 8.0, // Отступ между элементами
                runSpacing: 8.0, // Отступ между строками
                children: [
                  Tag(text: "Еда"),
                  Tag(
                    text: "Саморазвитие",
                  ),
                  Tag(text: "Технологии"),
                  Tag(text: "Дом"),
                  Tag(
                    text: "Досуг",
                  ),
                  Tag(text: "Забота о себе"),
                  Tag(
                    text: "Наука",
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20))
            ],
          ),
        ));
  }
}
