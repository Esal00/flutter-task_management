import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        height: Get.height,
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //logo
              Container(
                height:100,
                padding: const EdgeInsets.only(top: 30, ),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                image: AssetImage('images/icon.png')
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/home'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:const Icon(UniconsLine.laptop, 
                    color: Colors.grey,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Home',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize: 16,
                  ),
                  ),
                  ])
              ))
            ),
            
             SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/task'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:const Icon(UniconsLine.cube, 
                    color: Colors.grey,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Task',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize: 16,
                  ),
                  ),
                  ])
              ))
            ),
    
             SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/friends'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:const Icon(UniconsLine.heart, 
                    color: Colors.grey,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Friends',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize: 16,
                  ),
                  ),
                  ])
              ))
            ),
    
             SizedBox(
              height: 100,
              child: Center( 
              child: InkWell(
              child: Column (
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: Get.currentRoute == '/profile'
                    ? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white
                      )  
                      : BoxDecoration(),
                    child:const Icon(UniconsLine.user_circle, 
                    color: Colors.grey,
                    size: 30,),
                  ),
                  const SizedBox(
                  height: 5,
                  ),
                  const Text(
                  'Profile',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize: 16,
                  ),
                  ),
                  ])
             
              ),
              )
            ),
    
            ],
    
          ),
        )
        ),
    );
  }
}



