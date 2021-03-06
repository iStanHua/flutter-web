import 'package:flutter_web/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListViewPageState createState()=> new _ListViewPageState();

}

class _ListViewPageState extends State<ListViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Item $index"),
          );
        },
      ),
      // drawer: Drawer(),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),
    );
  }
}
