import 'package:flutter/material.dart';
import 'package:flutter_food_app/myfoodz/Theme/Color.dart';


String toUpper(String txt) => txt.toUpperCase();

TextStyle resturantListSwitchText(bool active){
  return TextStyle(
    color: active ? primaryColor : greyColor,
    fontSize: normalText-2
  );
}


TextStyle resturantListButton(){
  return TextStyle(
      color: primaryColor,
      fontSize: normalText-2
  );
}

TextStyle resturantListTitleText(){
  return TextStyle(
      color: Colors.pink,
      fontSize: normalText,
      fontWeight: FontWeight.bold
  );
}


TextStyle resturantListSubTitleText(){
  return TextStyle(
      color: Colors.brown,
      fontSize: normalText-4
  );
}


TextStyle detailsTabTitle(){
  return TextStyle(
    fontSize: normalText-4,
    fontWeight: FontWeight.w500
  );
}
