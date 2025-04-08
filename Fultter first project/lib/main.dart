
import 'package:flutter/material.dart';

main () {
  runApp(const MyApp())   ;// application
}
class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  // const constractor baniete hobe
  @override
  //bild method
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    //materal app activity or page gula thakb e
    return  MaterialApp(
      // color arki just
        theme: ThemeData(primaryColor: Colors.red) ,
        //dark theme gela colour kemon hobe oita
        darkTheme: ThemeData(primaryColor: Colors.blue ),
        color: Colors.purple, // primanry colour
        debugShowCheckedModeBanner: false,






        home:HomeActivity()
    ) ;
  }
// StatelessWidget is weidets

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedErro     r();
    //Scaffold vitore appbar body agula thakbe
    return Scaffold(
      appBar: AppBar(title: Text("My App ------------  "),),
      body: Text("Hellow"),
      // drawer: () ,
      // endDrawer: (),
      // bottomNavigationBar: (),
      // floatingActionButton: (),


    );
  }
}



