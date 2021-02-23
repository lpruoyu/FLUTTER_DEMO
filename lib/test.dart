void main(List<String> args) {
  var dateTime = DateTime.now();
  var hour = dateTime.hour;
  var second = dateTime.second;
  var minute = dateTime.minute;
  print('${dateTime.year}年${dateTime.month}月${dateTime.day}日');
  print('$hour时$minute分$second秒');
  print('${dateTime.millisecondsSinceEpoch}');
  print(DateTime.fromMillisecondsSinceEpoch(dateTime.millisecondsSinceEpoch));
}
