import 'package:flutter_web/material.dart';

import 'package:flutter_stan/views/notFound.dart';

import 'package:flutter_stan/views/home.dart';
import 'package:flutter_stan/views/counter.dart';
import 'package:flutter_stan/views/listView.dart';


// class MyRouter{
//   static Future pushPage(BuildContext context, Widget page) {
//     var val = Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (BuildContext context) {
//           return page;
//         },
//       ),
//     );

//     return val;
//   }

//   static Future pushPageDialog(BuildContext context, Widget page) {
//     var val = Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (BuildContext context) {
//           return page;
//         },
//         fullscreenDialog: true,
//       ),
//     );

//     return val;
//   }

//   static pushPageReplacement(BuildContext context, Widget page) {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (BuildContext context) {
//           return page;
//         },
//       ),
//     );
//   }
// }

///app routers
final Map<String, WidgetBuilder> routes = {
  '/': (context) => HomePage(),
  '/counter': (context) => CounterPage(),
  '/listview': (context) => ListViewPage(),
  '/404': (context) => NotFoundPage(),
};

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      return MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
    } else {
      return  MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    }
  }
  else {
    return  MaterialPageRoute(builder: (context) => NotFoundPage());
  }
}