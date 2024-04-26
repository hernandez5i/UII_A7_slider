import 'package:flutter/material.dart';
import 'package:requenes0397/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Zapatería IkerSneackers",
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff000000),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Color(0x00ffffff),
                    indicator: BoxDecoration(
                      color: Color(0xffc4c4c4),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Color(0xff000000),
                    unselectedLabelColor: Color(0xfeffffff),
                    tabs: [
                      TabItem(title: "Menu", count: 6),
                      TabItem(title: "Tenis", count: 3),
                      TabItem(title: "Favoritos", count: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Pagina Menu")),
              Center(child: Text("Pagina Tenis")),
              Center(child: Text("Pagina Favoritos")),
            ],
          )),
    );
  }
}
