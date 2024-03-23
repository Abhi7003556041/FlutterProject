
import 'package:collge_erp_app/view/Attendence.dart';
import 'package:collge_erp_app/view/home.dart';
import 'package:collge_erp_app/view/login.dart';
import 'package:collge_erp_app/view/mainHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class hidderDrawerScreen extends StatefulWidget {
  const hidderDrawerScreen({super.key});

  @override
  State<hidderDrawerScreen> createState() => _hidderDrawerScreenState();
}

class _hidderDrawerScreenState extends State<hidderDrawerScreen> {
  List<ScreenHiddenDrawer> _pages = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDetails();
    _pages = [
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Homepage",
        baseStyle: TextStyle(color: Colors.white,fontSize: 18 ),
        selectedStyle: TextStyle(color: Colors.black,fontSize: 18)
      ), MyCalculator(title: 'yooooo',)),
      ScreenHiddenDrawer(ItemHiddenMenu(
          name: "Attendence",
          baseStyle: TextStyle(color: Colors.white,fontSize: 18),
          selectedStyle: TextStyle(color: Colors.black,fontSize: 18)
      ), AttendancePage()),
    ];
  }
  late String name = "";
  late String userImg = "";
  void getDetails () async{
    var sharepref =await  SharedPreferences.getInstance();
    setState(() {
      name = sharepref.getString('name')!;
      userImg = sharepref.getString('avatar')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(screens: _pages, backgroundColorMenu: Colors.amber,slidePercent: 40,backgroundColorContent:Colors.red,
    styleAutoTittleName: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),actionsAppBar: [
      // Text("$name"),
       Container(
         margin: EdgeInsets.only(right: 12),
         decoration: BoxDecoration(
           border: Border.all(),
           borderRadius: BorderRadius.circular(100)
         ),
         child:   ClipRRect(
           borderRadius: BorderRadius.circular(80),
           child: Image.network(
             userImg!= "" ? userImg.toString() :  "https://cdn4.vectorstock.com/i/1000x1000/72/23/download-sign-on-transparent-background-load-vector-14117223.jpg",
             height: 40,
             width: 40,
             fit: BoxFit.contain,

           ),
         ),
       )

      ],
    // tittleAppBar: Container(height: 100,width: 100,decoration: BoxDecoration(color: Colors.cyanAccent)),
      isDraggable: true,);
  }
}
