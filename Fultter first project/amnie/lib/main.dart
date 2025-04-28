
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

  MySncakbar(message , context) {        // MySncakbar eta hocche toast message


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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // eta diya kon button ta active thakbe na thakbe oita set korse disi
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'homeee'  )  ,  // bottomnavigation bar modhe bottom nevigation bar ar item set korrtesi
          BottomNavigationBarItem(icon: Icon(Icons.add_call)  , label: 'add cal' )   ,
          BottomNavigationBarItem(icon: Icon(Icons.account_box)  , label: 'profile button'  )  ,

        ] ,
        // akahne 0 index a home icon 1 index a call 2 no a profile
        onTap: (int index)   {
          // on tap diya masg show korar jonnon
          if(index==0) {
            MySncakbar("Im aa home button ", context);
          }
          if(index==1) {
            MySncakbar("Im aa call ", context);
          }
          if(index==2) {
            MySncakbar("Im aa profile button ", context);
          }
          // nevegation drawer a 2 ta part akta header part orek ta list part

        },

      ),
      // nevegation drawer a 2 ta part akta header part orek ta list
      // drawer kete   endDrawer dile left side theka ase eta swap  ase
     // drawer: Drawer(
      endDrawer: Drawer(
        child: ListView(
          //onk gula item ...agukllake bolse children
          children: [ // eta 2 tper  // leadinf propertier vitro icon set kortesi
            DrawerHeader(
              padding: EdgeInsets.all(0), // padding ta sore  jabe
                child: UserAccountsDrawerHeader (
                    decoration: BoxDecoration(color: Colors.lightBlue),
                    accountName: Text("samin ahmed " , style: TextStyle(color: Colors.black)),
                    accountEmail:  Text("samin.ahmed@gamil.com" , style: TextStyle(color: Colors.black) ) ,
                    currentAccountPicture: Image.network("https://s6.imgcdn.dev/Yw0sFM.jpg"),
                    onDetailsPressed: () {MySncakbar("this is my profile ", context);},
                )

            ) ,
            // ListTile(title: Text("home"),) ,
            // ListTile(title: Text("contact"),) ,
            // ListTile(title: Text("email"),) ,
            // ListTile(title: Text("chobi dao"),) ,
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              onTap: () {
              MySncakbar("home ", context);
              },  ) ,
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("contact"),
              onTap: () {
                MySncakbar("contact", context);
                },  ) ,
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onTap: () {
                MySncakbar("profile ", context);
              },  )  ,
            ListTile(
              leading: Icon(Icons.email),
              title: Text("email"),
              onTap: () {
                MySncakbar("email ", context);
              },  )  ,
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("chobi dao"),
              onTap: () {
                MySncakbar("chobi ", context);
              },  )  ,
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          //onk gula item ...agukllake bolse children
          children: [ // eta 2 tper  // leadinf propertier vitro icon set kortesi
            DrawerHeader(
                padding: EdgeInsets.all(0), // padding ta sore  jabe
                child: UserAccountsDrawerHeader (
                  decoration: BoxDecoration(color: Colors.lightBlue),
                  accountName: Text("samin ahmed " , style: TextStyle(color: Colors.black)),
                  accountEmail:  Text("samin.ahmed@gamil.com" , style: TextStyle(color: Colors.black) ) ,
                  currentAccountPicture: Image.network("https://s6.imgcdn.dev/Yw0sFM.jpg"),
                  onDetailsPressed: () {MySncakbar("this is my profile ", context);},
                )

            ) ,
            // ListTile(title: Text("home"),) ,
            // ListTile(title: Text("contact"),) ,
            // ListTile(title: Text("email"),) ,
            // ListTile(title: Text("chobi dao"),) ,
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
              onTap: () {
                MySncakbar("home ", context);
              },  ) ,
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("contact"),
              onTap: () {
                MySncakbar("contact", context);
              },  ) ,
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onTap: () {
                MySncakbar("profile ", context);
              },  )  ,
            ListTile(
              leading: Icon(Icons.email),
              title: Text("email"),
              onTap: () {
                MySncakbar("email ", context);
              },  )  ,
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("chobi dao"),
              onTap: () {
                MySncakbar("chobi ", context);
              },  )  ,
          ],
        ),
      ),
    );
  }
}


