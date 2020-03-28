import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  String title;

  PageHeader({@required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkResponse(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              Future.delayed(
                  Duration(milliseconds: 100), () => Navigator.pop(context));
            },
            child: Icon(
              Icons.keyboard_backspace,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          Text(
            (title).toUpperCase(),
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500,color: Colors.white),
          ),
          Container(
            width: 20.0,
          )
        ],
      ),
    );
  }
}
