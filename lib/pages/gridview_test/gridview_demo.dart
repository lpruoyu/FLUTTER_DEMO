import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("GridView Demo"),
        ),
        body: _MBody(),
      );
}

List<Map> listDatas = [
  {
    "name": "舒畅",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300963690&di=4bdf0743b0cae5784fdfbb6e84af16c8&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw618h711%2F20171220%2F442c-fypvuqe2437302.jpg",
  },
  {
    "name": "石原里美",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300987299&di=a40b90bc58ffdca02e2202f70c7f5071&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F20%2F20161020121946_UGZuW.jpeg",
  },
  {
    "name": "林依晨",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301015416&di=7972910e38239e9d02cd42b1f39dc149&imgtype=0&src=http%3A%2F%2Fimg1.dzwww.com%3A8080%2Ftupian%2F20160727%2F89%2F7802890317610934789.jpg",
  },
  {
    "name": "Twice",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301033998&di=d29a84ea09453000d0d44f25156d8ae9&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814090645_grslp.thumb.224_0.jpg",
  },
  {
    "name": "女孩子们",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301065472&di=00a4c0b9985fbb7ab85050e2321b039d&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190321%2F503e29b7c9b644d49a0ea7cccb063c60.jpeg",
  },
  {
    "name": "舒畅",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300963690&di=4bdf0743b0cae5784fdfbb6e84af16c8&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw618h711%2F20171220%2F442c-fypvuqe2437302.jpg",
  },
  {
    "name": "石原里美",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300987299&di=a40b90bc58ffdca02e2202f70c7f5071&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F20%2F20161020121946_UGZuW.jpeg",
  },
  {
    "name": "林依晨",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301015416&di=7972910e38239e9d02cd42b1f39dc149&imgtype=0&src=http%3A%2F%2Fimg1.dzwww.com%3A8080%2Ftupian%2F20160727%2F89%2F7802890317610934789.jpg",
  },
  {
    "name": "Twice",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301033998&di=d29a84ea09453000d0d44f25156d8ae9&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814090645_grslp.thumb.224_0.jpg",
  },
  {
    "name": "女孩子们",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301065472&di=00a4c0b9985fbb7ab85050e2321b039d&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190321%2F503e29b7c9b644d49a0ea7cccb063c60.jpeg",
  },
  {
    "name": "舒畅",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300963690&di=4bdf0743b0cae5784fdfbb6e84af16c8&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw618h711%2F20171220%2F442c-fypvuqe2437302.jpg",
  },
  {
    "name": "石原里美",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300987299&di=a40b90bc58ffdca02e2202f70c7f5071&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F20%2F20161020121946_UGZuW.jpeg",
  },
  {
    "name": "林依晨",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301015416&di=7972910e38239e9d02cd42b1f39dc149&imgtype=0&src=http%3A%2F%2Fimg1.dzwww.com%3A8080%2Ftupian%2F20160727%2F89%2F7802890317610934789.jpg",
  },
  {
    "name": "Twice",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301033998&di=d29a84ea09453000d0d44f25156d8ae9&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814090645_grslp.thumb.224_0.jpg",
  },
  {
    "name": "女孩子们",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301065472&di=00a4c0b9985fbb7ab85050e2321b039d&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190321%2F503e29b7c9b644d49a0ea7cccb063c60.jpeg",
  },
  {
    "name": "舒畅",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300963690&di=4bdf0743b0cae5784fdfbb6e84af16c8&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw618h711%2F20171220%2F442c-fypvuqe2437302.jpg",
  },
  {
    "name": "石原里美",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300987299&di=a40b90bc58ffdca02e2202f70c7f5071&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F20%2F20161020121946_UGZuW.jpeg",
  },
  {
    "name": "林依晨",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301015416&di=7972910e38239e9d02cd42b1f39dc149&imgtype=0&src=http%3A%2F%2Fimg1.dzwww.com%3A8080%2Ftupian%2F20160727%2F89%2F7802890317610934789.jpg",
  },
  {
    "name": "Twice",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301033998&di=d29a84ea09453000d0d44f25156d8ae9&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814090645_grslp.thumb.224_0.jpg",
  },
  {
    "name": "女孩子们",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301065472&di=00a4c0b9985fbb7ab85050e2321b039d&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190321%2F503e29b7c9b644d49a0ea7cccb063c60.jpeg",
  },
  {
    "name": "舒畅",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300963690&di=4bdf0743b0cae5784fdfbb6e84af16c8&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw618h711%2F20171220%2F442c-fypvuqe2437302.jpg",
  },
  {
    "name": "石原里美",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300987299&di=a40b90bc58ffdca02e2202f70c7f5071&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F20%2F20161020121946_UGZuW.jpeg",
  },
  {
    "name": "林依晨",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301015416&di=7972910e38239e9d02cd42b1f39dc149&imgtype=0&src=http%3A%2F%2Fimg1.dzwww.com%3A8080%2Ftupian%2F20160727%2F89%2F7802890317610934789.jpg",
  },
  {
    "name": "Twice",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301033998&di=d29a84ea09453000d0d44f25156d8ae9&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814090645_grslp.thumb.224_0.jpg",
  },
  {
    "name": "女孩子们",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301065472&di=00a4c0b9985fbb7ab85050e2321b039d&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190321%2F503e29b7c9b644d49a0ea7cccb063c60.jpeg",
  },
  {
    "name": "舒畅",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300963690&di=4bdf0743b0cae5784fdfbb6e84af16c8&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw618h711%2F20171220%2F442c-fypvuqe2437302.jpg",
  },
  {
    "name": "石原里美",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575300987299&di=a40b90bc58ffdca02e2202f70c7f5071&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F20%2F20161020121946_UGZuW.jpeg",
  },
  {
    "name": "林依晨",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301015416&di=7972910e38239e9d02cd42b1f39dc149&imgtype=0&src=http%3A%2F%2Fimg1.dzwww.com%3A8080%2Ftupian%2F20160727%2F89%2F7802890317610934789.jpg",
  },
  {
    "name": "Twice",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301033998&di=d29a84ea09453000d0d44f25156d8ae9&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F14%2F20180814090645_grslp.thumb.224_0.jpg",
  },
  {
    "name": "女孩子们",
    "imgurl":
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575301065472&di=00a4c0b9985fbb7ab85050e2321b039d&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190321%2F503e29b7c9b644d49a0ea7cccb063c60.jpeg",
  },
];

class _MBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        childAspectRatio: 0.7,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        children: listDatas.map((v) => getContentView(v)).toList(),
      ),
    );
  }
}

Widget getContentView(Map v) => Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(233, 233, 233, 0.9)),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Image.network(
              v["imgurl"],
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            flex: 1,
            child: Text(
              v["name"],
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
