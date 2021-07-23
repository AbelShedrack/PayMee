import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Future<void> _showMyDialog() async {
    return showDialog(
      context: context,
      builder: (
        _,
      ) {
        return AlertDialog(
          title: const Text("Quick Transfer"),
          elevation: 0.0,
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Card(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "amount",
                      prefixIcon: Icon(FontAwesomeIcons.yenSign),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Note",
                      prefixIcon: Icon(Icons.note_add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: Container(
                child: MaterialButton(
                  onPressed: () {},
                  child: Text("Transfer"),
                  color: Colors.teal,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PayMee"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (
              _,
            ) {
              return ["Settings", "History", "Transactions"].map((contents) {
                return PopupMenuItem(
                  child: Text(contents),
                  value: contents,
                );
              }).toList();
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: AlertDialog(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _showMyDialog,
        backgroundColor: Colors.teal,
        child: Icon(Icons.payment),
        tooltip: "NairaPay",
      ),
    );
  }
}
