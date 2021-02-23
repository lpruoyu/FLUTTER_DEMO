import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

class SwiperTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Swiper Test"),
        ),
        body: _Body(),
      );
}

class _Body extends StatelessWidget {
  List<String> imageUrls = [
    "https://www.itying.com/images/flutter/1.png",
    "https://www.itying.com/images/flutter/2.png",
    "https://www.itying.com/images/flutter/3.png",
  ];

  List<String> btnInfos = [
    "https://www.it ",
    "htt png",
    " .png",
  ];

  Widget mAspectRatio() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Swiper(
        autoplay: true,
        loop: true,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.white30,
                  child: Text(
                    btnInfos[index],
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            mAspectRatio(),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      );
}
