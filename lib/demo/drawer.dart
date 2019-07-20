import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('mei xi', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('data@126.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://www.aihuahua.net/uploads/allimg/141228/1-14122Q40251937.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cn.bing.com/th?id=OIP.FcY_x6VOUV1CDfkzefdphQHaEo&pid=Api&rs=1'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6), BlendMode.srcOver)),
            ),
          ),
          ListTile(
            onLongPress: () => Navigator.pop(context),
            title: Text('xiao ming', textAlign: TextAlign.end),
            trailing: Icon(Icons.message, color: Colors.black12),
            leading: Icon(Icons.person_add, color: Colors.black12),
          ),
          ListTile(
            onLongPress: () => Navigator.pop(context),
            title: Text('xiao li', textAlign: TextAlign.end),
            trailing: Icon(Icons.message, color: Colors.black12),
          ),
          ListTile(
            onTap: () => Navigator.pop(context),
            title: Text('xiao wang', textAlign: TextAlign.end),
            trailing: Icon(Icons.message, color: Colors.black12),
          )
        ],
      ),
    );
  }
}
