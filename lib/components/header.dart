import 'package:flutter_web/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Text(
                "Flutter Stan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
              ),
              onPressed: () {},
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  child: Text(
                    "首页",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "产品服务",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "联系我们",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "关于我们",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: <Widget>[
          FlatButton(
              child: Text(
                "Flutter Stan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
              ),
              onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               FlatButton(
                  child: Text(
                    "首页",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "产品服务",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "联系我们",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    "关于我们",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                    ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
