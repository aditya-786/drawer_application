import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Aditya Aggarwal"),
              accountEmail: Text("adi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image(
                  image: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C5103AQGtG6IykutF-g/profile-displayphoto-shrink_400_400/0/1569697121397?e=1616630400&v=beta&t=eB_qv6lfvq36-xV1wPMcKLkyHWbdAHIdZx_FjNjB2xw'),
                ),
              ),
            ),
            ListTile(
              title: Text('Option 1'),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Option 1'),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Option 1'),
              trailing: Icon(Icons.add_a_photo),
            ),
            ListTile(
              title: Text('Categories'),
              trailing: Icon(Icons.category_rounded),
              onTap: () => Navigator.of(context).pushNamed("Categories"),
            ),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Hi This is Drawer App"),
      ),
    );
  }
}
