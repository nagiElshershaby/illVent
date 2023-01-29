import 'package:flutter/material.dart';

Widget lTile(BuildContext context,String i, String type, String t, String d,double p) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      listTile(context,i,type,t,d,p),
      const Divider(
        color: Colors.grey,
      ),
    ],
  );
}
Widget listTile(BuildContext context,String i, String type, String title, String d,double p) {
  return InkWell(
    onTap: (){
      Navigator.of(context).pushNamed('element',arguments: {'type': type,'title':title, 'image':i, 'description':d, 'price':p});
    },
    splashColor: Colors.white,//const Color(0xff2B4587),
    child: ListTile(
          leading: Image(
            image: AssetImage(i),
            width: 55,
            height: 60,
          ),
          title: Text(title),
          subtitle: p!=0?Text(
            '$p L.E',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ):d!=' '?Text(
            d,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ):Text(''),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
  );
}
