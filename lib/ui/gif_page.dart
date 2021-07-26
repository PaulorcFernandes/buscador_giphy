import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;
  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"], style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        actions: [
          IconButton(onPressed: () {
            Share.share(_gifData["images"]["fixed_height"]["url"]);
          }, icon: Icon(Icons.share))
        ],
      ),

      backgroundColor: Colors.black,

      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"],
          width: 500.0,
          height: 400.0,
        ),
      ),
    );
  }
}
