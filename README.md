<p align="center">
	<img src="https://github.com/venbrinoDev/go_navigate/blob/master/images/go.png" height="100" alt="Go Navigate" />
</p>
<p align="center">
	<a href="https://pub.dev/packages/go_navigate"><img src="https://img.shields.io/pub/v/go_navigate.svg" alt="Pub.dev Badge"></a>
	<a href="https://github.com/venbrinoDev/go_navigate/actions"><img src="https://github.com/EdsonBueno/focus_detector/workflows/build/badge.svg" alt="GitHub Build Badge"></a>
	<a href="https://github.com/tenhobi/effective_dart"><img src="https://img.shields.io/badge/style-effective_dart-40c4ff.svg" alt="Effective Dart Badge"></a>
	<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
	<a href="https://github.com/venbrinoDev/go_navigate"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Flutter Platform Badge"></a>
</p>

## Create By Me(Agalaba Ifeanyi Precious)

# go Navigate

Navigate Like a pro from one Screen to another Using go navigate.


go_Navigate provide  you the ability to navigate with ease from one screen to another 
- Navigating to/from another screen;
- Passing of argument from on screen to another;


## Usage

```dart
Go home = Go.init();

///  home.goToAndDrop(context);
/// home.goTo(context, "/");
/// home.goBack(context);
/// home.goToAndClearPrev(context, route);
/// home.goToAndClearAll(context, route, defaultHome);


void main(){
  runApp( MaterialApp(
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/':(_) =>Home(),
        '/second':(_) =>Screen1()
      }
  ));
}



class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>  Scaffold(

    appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        title:const Text('Home',style:
        TextStyle(fontSize: 14,fontWeight:FontWeight.w500),)),

    body:  Center(child: ElevatedButton(onPressed:(){
      home.goTo(context, '/second');
    }
        , child:const Text('Home',)),),
  );


}


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>  Scaffold(

    appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        title:const Text('Screen1',style:
        TextStyle(fontSize: 14,fontWeight:FontWeight.w500),)),

    body:  Center(child: ElevatedButton(onPressed:(){
      home.goToAndDrop(context,defaultHome: '/oo');
    }
        , child:const Text('Screen',)),),);
}
```


## Usage Scenarios
- Navigate from any screen;
- passing argument form any and to ant screen;
