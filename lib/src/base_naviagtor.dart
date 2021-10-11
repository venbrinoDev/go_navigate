import 'package:flutter/material.dart';


abstract class BaseNavigator{

  goTo(BuildContext context, String route, {dynamic arguments});

  goToAndClearAll(BuildContext context, String route,String? defaultHome, {dynamic arguments});

  goToAndDrop(context,{String? defaultHome});

  goToAndClearPrev(BuildContext context, String route, {dynamic arguments});

  goBack(BuildContext context);
}