import 'package:flutter_web/material.dart';
import 'package:flutter_stan/utils/theme.dart';

class Button extends StatefulWidget {
  final String text;
  final GestureTapCallback onTap;

  Button({@required this.text, @required this.onTap});

  @override
  State<StatefulWidget> createState() => ButtonState();
}

class ButtonState extends State<Button> {

  Color color = ThemeUtil.baseColor;
  TextStyle textStyle = TextStyle(color: Colors.white, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.widget.onTap();
      },
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: const Color(0xffcccccc)),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Center(
          child: Text(this.widget.text, style: textStyle,),
        ),
      ),
    );
  }

}