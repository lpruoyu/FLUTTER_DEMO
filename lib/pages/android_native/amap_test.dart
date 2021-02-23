import 'package:flutter/material.dart';
import 'package:amap_location/amap_location.dart';

class AmapTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Amap Test"),
        ),
        body: MStatefulWidget(),
      );
}

class MStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<MStatefulWidget> {
  @override
  void initState() {
    super.initState();
    startAmap();
  }

  void startAmap() async {
    await AMapLocationClient.startup(new AMapLocationOption(
        desiredAccuracy: CLLocationAccuracy.kCLLocationAccuracyHundredMeters));
    var location =  await AMapLocationClient.getLocation(true);
    print(location.latitude);
    print(location.longitude);
    print(location.country);
    print(location.city);
    print(location.street);
    print(location.province);
  }


  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }

  void dispose() {
    //注意这里关闭
    AMapLocationClient.shutdown();
    super.dispose();
  }

}
