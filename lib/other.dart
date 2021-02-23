import 'dart:convert';



void main() {
  var decode = json.decode('{"result":[{"aid":"4","catid":"20","username":"admin","title":"\u5982\u4f55\u5f00\u53d1PhoneGap\u63d2\u4ef6","pic":"portal\/201307\/07\/122407t0eubzk3k2ncp0ss.jpg","dateline":"1373171520"},{"aid":"2","catid":"20","username":"admin","title":"html5\u5982\u4f55\u5f00\u53d1\u8de8\u5e73\u53f0\u624b\u673a\u5e94\u7528\u8f6f\u4ef6-PhoneGap\u6846\u67b6\u6765\u5e2e\u60a8","pic":"portal\/201306\/20\/195123o3mm7msi3zwmwx0d.jpg","dateline":"1371729120"}]}');
  print(decode);
}