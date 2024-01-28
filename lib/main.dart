import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget _buildStack(String text, Color color, IconData iconData) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 100,
            width: 115,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.chat,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Music',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStack("Favorites", Colors.red, Icons.favorite),
                    _buildStack("Playlist", Colors.orange, Icons.playlist_add_check_circle),
                    _buildStack("Recent", Colors.blueGrey, Icons.watch_later),
                  ],
                ),
              ),
            ),
            Text(
              "Import files from device",
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Song',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Artist',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Album',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Folder',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            _buildRowWithIcon("Music", '1 song (s)', Icons.folder),
            SizedBox(height: 20,),
            _buildRowWithIcon("اغاني", '59 song (s)', Icons.folder),
            SizedBox(height: 20,),
            _buildRowWithIcon("اناشيد", '60 song (s)', Icons.folder),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: IconButton(
          icon: Icon(Icons.music_note),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildRowWithIcon(String title, String subtitle, IconData icon) {
    return Container(
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              icon,
              size: 27,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(subtitle),
            ],
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
