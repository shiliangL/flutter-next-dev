import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  SwiperPageState createState() {
    return SwiperPageState();
  }
}

class SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
        itemBuilder: _swiperBuilder,
        itemCount: 3,
        pagination: new SwiperPagination(
          builder: DotSwiperPaginationBuilder(
          color: Colors.black54,
          activeColor: Colors.white,
        )),
        control: new SwiperControl(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print('点击了第$index个'),
        viewportFraction: 0.8,
        scale: 0.9,
    ));
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
      // "https://resources.ninghao.org/images/gravity-falls.png",
      "https://resources.ninghao.org/images/dragon.jpg",
      // "https://resources.ninghao.org/images/free_hugs.jpg",
      // "https://resources.ninghao.org/images/icecreamtruck.png",
      fit: BoxFit.fill,
    ));
  }

}
