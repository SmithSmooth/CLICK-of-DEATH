import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";


class AppBarStuff extends StatelessWidget with PreferredSizeWidget{
  const AppBarStuff({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        toolbarHeight: 80,
        title: const Text("Click Of Death",
            softWrap: true,
            style: TextStyle(
                fontFamily: "serif",
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        //backgroundColor: const Color.fromARGB(255, 4, 111, 240),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30))));
    
  }
}