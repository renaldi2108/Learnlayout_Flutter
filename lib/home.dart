import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget itemList = new Container(
        width: 160.0,
        height: MediaQuery.of(context).size.height,
        margin: new EdgeInsets.only(left: 0.0, right: 10.0, bottom: 0.0, top: 0.0),
        child: Stack( // TODO: Sama seperti RelativeLayout
          children: <Widget>[
            new Image.network('https://imgcdn1.kwikku.com/images_users/images_article_list/75187-listicle-20180419084835.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover
            ),
            Align( // TODO: Untuk memposisikan parent
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  color: const Color(0xff99000000),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Judul", style: TextStyle(color: const Color(0xffFFFFFF)))
                  )
              ),
            )
          ],
        )
    );

      Widget horizontalList1 = new Container(
          height: 200.0,
          child: new ListView( // TODO: Sama seperti RecyclerView
            padding: EdgeInsets.only(left: 10.0, right: 0.0, top: 10.0, bottom: 10.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              itemList,itemList,itemList,itemList,itemList,itemList,itemList,itemList
            ],
          )
      );

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: new BoxConstraints(),
            child: Column( // TODO: Sama seperti LinearLayout vertical orientation
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0, top: 15.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Card( // TODO: Sama seperti CardView
                            child: Column( // TODO: Sama seperti LinearLayout vertical orientation
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Stack( // TODO: Sama seperti RelativeLayout
                                          children: <Widget>[
                                            Align( // TODO: Untuk memposisikan parent
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                child: Text("Best Anime Sci-Fi")
                                              ),
                                            ),
                                            Align( // TODO: Untuk memposisikan parent
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  child: Text("More")
                                              ),
                                            )
                                          ],
                                        )
                                    )
                                ),
                                horizontalList1
                              ],
                            )
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0, top: 0.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Card( // TODO: Sama seperti CardView
                            child: Column( // TODO: Sama seperti LinearLayout vertical orientation
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Stack( // TODO: Sama seperti RelativeLayout
                                          children: <Widget>[
                                            Align( // TODO: Untuk memposisikan parent
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  child: Text("Best Anime Sport")
                                              ),
                                            ),
                                            Align( // TODO: Untuk memposisikan parent
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  child: Text("More")
                                              ),
                                            )
                                          ],
                                        )
                                    )
                                ),
                                horizontalList1
                              ],
                            )
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0, top: 0.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Card( // TODO: Sama seperti CardView
                            child: Column( // TODO: Sama seperti LinearLayout vertical orientation
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.all(16.0),
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Stack( // TODO: Sama seperti RelativeLayout
                                          children: <Widget>[
                                            Align( // TODO: Untuk memposisikan parent
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  child: Text("Best Anime Adventure")
                                              ),
                                            ),
                                            Align( // TODO: Untuk memposisikan parent
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  child: Text("More")
                                              ),
                                            )
                                          ],
                                        )
                                    )
                                ),
                                horizontalList1
                              ],
                            )
                        )
                    )
                )
              ],
            )
          )
        )
      )
    );
  }
}

