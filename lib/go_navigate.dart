
library go_navigate;

import 'package:flutter/material.dart';
import 'package:go_navigate/src/base_naviagtor.dart';


class Go implements BaseNavigator{

  static Go _initialize = Go._internal();

  Go._internal();

 factory Go.init(){
   return _initialize;
 }

  @override
  goTo(BuildContext context, String route, {arguments}) {
    Navigator.of(context).pushNamed(route, arguments: arguments);
  }

  @override
  goToAndClearAll(BuildContext context, String route,{arguments}) {
    Navigator.of(context).pushNamedAndRemoveUntil(route, ModalRoute.withName('/'), arguments: arguments);
  }

  @override
  goToAndClearPrev(BuildContext context, String route, {arguments}) {
    Navigator.of(context).popAndPushNamed(route, arguments: arguments);
  }

  @override
  goToAndDrop(context,{String? defaultHome}) {
    Navigator.of(context).popUntil(ModalRoute.withName(defaultHome??'/'));
  }

  @override
  goBack(BuildContext context) {
    Navigator.of(context).pop();
  }
}


