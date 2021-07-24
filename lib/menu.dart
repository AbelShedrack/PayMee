import 'package:flutter/material.dart';
import 'package:nairapay/Users.dart';
import 'package:nairapay/services.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<User> _users;
  bool _isLoading = true;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Services.getUsers().then((user) {
      setState(() {
        _users = user;
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isLoading ? "Loading" : "JsonPlaceHolder"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.orange,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: ListView.builder(
            itemCount: null == _users ? 0 : _users.length,
            padding: EdgeInsets.all(12.0),
            itemBuilder: (_, int index) {
              User user = _users[index];
              return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListBody(
                  children: [
                    ListTile(
                      title: Text("Name: ${user.name}"),
                      subtitle: Text("Email: ${user.email}"),
                    ),
                    ListTile(
                      title: Text("ID: ${user.id}"),
                      subtitle: Text("Address: ${user.address.street}"),
                    ),
                    ListTile(
                      title: Text("Username: ${user.username}"),
                      subtitle: Text("Phone: ${user.phone}"),
                    ),
                    ListTile(
                      title: Text("Website: ${user.website}"),
                      subtitle: Text("Company: ${user.company.name}"),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
