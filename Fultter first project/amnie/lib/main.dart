
import 'package:flutter/material.dart';

main () {
  runApp( MyApp())   ;// application
}
class MyApp extends StatelessWidget  {
  MyApp({super.key});

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
   HomeActivity({super.key});
  var MyItems = [
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "Rabbil"},
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "Samin"}   ,
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "Jamil"},
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "maruf"},
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "jubayer"},
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "pessi"}   ,
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "CR7"}   ,
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "neyam"},
    {"img" : "https://s6.imgcdn.dev/YwRy5M.jpg" , "title" : "heda"}   ,
  ];
  MySncakbar(message , context) {        // MySncakbar eta hocche toast message


    return   ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );

  }

  Mylartdiglouge(context) {        // context parameter pass korabooo
    return showDialog(  //showDialog widgets
        context: context,
        builder: (BuildContext context ) {         // doalouge tka ebuild korbe
          return Expanded(
              child: AlertDialog(
                title: Text("ALretr !"),
                content: Text("Do you want me to laerst "),
                actions: [      // action buttion yes or no typer
                  TextButton(onPressed: (){
                    MySncakbar("Delete success", context);
                  }, child: Text("YES")),
                  TextButton(onPressed: (){Navigator.of(context);}, child: Text("NO")),
                  // no te click klorole dismiss mkore dibo
                ],
              )
          );
        }

    );





  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedErro     r();
    //Scaffold vitore appbar body agula thakbe
    final  ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        // padding: EdgeInsets.all(25) ,
        // backgroundColor: Colors.green ,
        // foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 60),
       // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
    );


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
      // body: Center(
      //  child:  Text("Samin vai aseee"),
      //
      // )


     // body: Row(
     //   mainAxisAlignment: MainAxisAlignment.spaceEvenly, // spaceEvenly mane space avabe sjow korbe etar aro property ase
     //   children: [
     //     // Container(height: 100, width: 100, child: Image.network("https://s6.imgcdn.dev/YwRy5M.jpg"),),
     //     // Container(height: 100, width: 100, child: Image.network("https://s6.imgcdn.dev/YwRy5M.jpg"),),
     //     // Container(height: 100, width: 100, child: Image.network("https://s6.imgcdn.dev/YwRy5M.jpg"),),
     //     TextButton(onPressed: (){MySncakbar("I,m text buttton ", context);}, child: Text("Hwelooow buttton"))  ,
     //     ElevatedButton(onPressed: (){MySncakbar("I,m text buttton ", context);}, child: Text("Elvate buttton") , style: buttonStyle,)  ,
     //     OutlinedButton(onPressed: (){MySncakbar("I,m text buttton ", context);}, child: Text("Outline buttton"))  ,
     //     // onPressed mane icon upor click korle ki liokha  show korbe oita and icon diya Iconbutton
     //     // ar kon ICon show korbe oita and Child diya TEXT ai show button name ta
     //   ]
     // ),
      // Container(
      //   height: 250,
      //   width: 250,
      //   alignment:Alignment.topCenter ,//akahne on gula property aseee
      //   margin: EdgeInsets.fromLTRB(80, 90, 100, 80),// edgeInsit.all(30)
      //   padding: EdgeInsets.all(30),
      //   decoration: BoxDecoration(
      //     color: Colors.lightBlue,
      //     border: Border.all(color: Colors.black, width: 2)
      //   ),
      //   child: Image.network("https://s6.imgcdn.dev/YwRy5M.jpg")
      //   //Text("it me samin"),
      //
      // ),
    // body: Center(
    //   child: ElevatedButton(onPressed: (){Mylartdiglouge(context);}, child: Text("Click me ")),
    // ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'first name' ),)) ,
    //       Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'last name' ),)) ,
    //       Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Email' ),)) ,
    //       Padding(padding: EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, child: Text('submitttoo') , style:buttonStyle,),) ,
    //     ],
    //   ),
      body: ListView.builder(
          itemCount:  MyItems.length,  // list wiew bithore kotto gula item sow korachi
          itemBuilder: (context, index) {
           return GestureDetector(
             onTap: (){MySncakbar(context,MyItems[index]['title'],);},
             child: Container(
               margin: EdgeInsets.all(10),
               width: double.infinity,
               height: 100,
               child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),    // ! jodi image na thake
               
             ),
           );
          },

      ),
    );
  }
}


