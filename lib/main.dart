import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Welcome to Music",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/dekstop.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Song"),
                      new Tab(icon: new Icon(Icons.download), text: "Galery"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            Song(),
            Galery(),
          ]),
        ),
      ),
    );
  }
}

class Song extends StatelessWidget {
  final List lagu = [
    "Tulus- Hati hati di jalan",
    "Maneskin - Beggin",
    "Many posker- Baby plis dont go",
    "Ratna Antika - Serngenge",
    "Pamungkas - To the bond",
    "Twice - What its love",
    "Yovie n Nuno - Dandelions",
    "Say jo - Dojat",
    "Aku - Dia",
    "Denny Caknan - Pingal",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(lagu[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + lagu[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: lagu.length,
      ),
    );
  }
}

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.ibb.co/yf9fjmC/Ateng-sent-you-a-Pin.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Ndarboy Genk - Koyo Jogja Istimewa',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/zRtsCF8/96bd3d8b-f938-4615-83c2-eb4f8aca2fd0.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Tulus - Hatihati dijalan',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/hsJzrkk/Pin-Oleh-Carmela-Di-Di-2021-Wallpaper-Kartun-Kartu.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Maneskin - Beggin',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/hsJzrkk/Pin-Oleh-Carmela-Di-Di-2021-Wallpaper-Kartun-Kartu.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Pamungkas - To the bond',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/BCjzrqS/2ad87504-b559-4e1c-ab1f-5b01b91f132f.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Putri- twice',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/3h9Z0Bp/7f1c23de-f7d2-47e2-ad02-0a85428d0c9e.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Dimas- Pikir Keri',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/vwmpz0B/image.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Yusron - Dia',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/qCTcTJk/94789ea7-6a75-41c2-af88-5f7900b7ee55.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Denny Caknan- Pingal',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/qCTcTJk/94789ea7-6a75-41c2-af88-5f7900b7ee55.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Twice - Mee',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.ibb.co/7k5LJbW/Noche-gato.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'jauhari- I love you',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
