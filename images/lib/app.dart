import 'package:flutter/material.dart';

class Deneme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter homework',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 26.0, color: Colors.white, fontFamily: 'RobotoMono'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Icon(
            Icons.computer,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Image ve Buton türleri",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.purpleAccent[300],
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      alignment: Alignment.bottomCenter,
                      height: 70.0,
                      width: 70.0,
                      color: Colors.cyan[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Asset klasöründen resim çekmek istediğimiz zaman bu şekilde yazıyoruz kodu ve pubspec klasörüne gerekli yolları tanımlıyoruz.
                          Image.asset(
                            "assets/images/funku.jpg",
                            height: 50.0,
                            width: 50.0,
                          ),
                          Text(
                            "Kadir",
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      height: 70.0,
                      width: 70.0,
                      color: Colors.cyan[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Internetten resim çekerken kullanmamız gereken yapı bu oluyor.
                          Image.network(
                            "https://hdqwalls.com/wallpapers/assassins-creed-odyssey-the-fate-of-atlantis-episode-3-4k-m2.jpg",
                          ),
                          Text(
                            "Kadir",
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      height: 70.0,
                      width: 70.0,
                      color: Colors.cyan[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Yuvarlak çerçeveli resim eklerken bu yapıyı kullanıyoruz.
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                            backgroundColor: Colors.orange,
                          ),
                          Text(
                            "Circle",
                            textDirection: TextDirection.ltr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Aynı satırda bulunan nesneleri aynı boyutta göstermeye yarıyor.
            IntrinsicHeight(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      height: 300.0,
                      width: 300.0,
                      color: Colors.cyan[300],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //Internetten resim çekerken kullanmamız gereken yapı bu oluyor.
                          FadeInImage.assetNetwork(
                            placeholder: "assets/images/loading.gif",
                            image:
                                "https://hdqwalls.com/wallpapers/punisher-0h.jpg",
                          ),
                          Text(
                            "Fade img",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
