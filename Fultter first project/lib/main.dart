
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

  MySncakbar(message , context) {


     return   ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );

  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedErro     r();
    //Scaffold vitore appbar body agula thakbe
    return Scaffold(
      appBar: AppBar(
        title: Text("My App ------------  "),
         titleSpacing: 0,
        centerTitle: true,// eta na dile eta side asi jabe apppbar
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.green,
         // action is a kind of array
        actions: [
          //onPressed mane icon upor click korle ki show korbe oita and icon diya Iconbutton ar kon ICon show korbe oita
          IconButton(onPressed: (){MySncakbar("Contact korrooo ", context);}, icon: Icon(Icons.import_contacts))  ,
          IconButton(onPressed: (){MySncakbar("senti khaow", context);}, icon: Icon(Icons.insert_emoticon_sharp)),
          IconButton(onPressed: (){MySncakbar("search korba ", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySncakbar("hello!!", context);}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){MySncakbar("meramot kaje niyojito", context);}, icon: Icon(Icons.settings)),


        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10 ,   //koto tuk elevate hoi theka uporer dike oita                                              1st property
        child :  Icon(Icons.add_a_photo),    // child Property nisi cuz ar vitre akta icon dibooo                     2nd property
        backgroundColor: Colors.red,
        onPressed: () {                    // floating action button a ki hobe oita bole deya                          3rd property
          MySncakbar("chobi up dao  ", context);
        },
      ) ,

      //body: Text("Hellow"),
      // drawer: () ,
      // endDrawer: (),
      // bottomNavigationBar: (),
      // floatingActionButton: (),


    );
  }
}



