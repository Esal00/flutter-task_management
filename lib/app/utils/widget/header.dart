import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_flutter_pil/app/routes/app_pages.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:Get.height * 0.1, 
      child: Padding(
        padding: const EdgeInsets.only(left: 
        40, right: 40, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Column(
            //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Task Management', style: TextStyle(fontSize: 25, color: Colors.grey),),
            const Text('Manage task made easy with friends', style: TextStyle(fontSize: 14, color: Colors.grey),),
            ],
            ),
            const Spacer(flex: 1,),
            Expanded(
              flex: 1,
              child: TextField(
              decoration: InputDecoration(
                filled: true, 
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.only(left: 40, right: 10,),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), 
                borderSide: const BorderSide(color: Colors.white)
              ),
              focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30), 
              borderSide: const BorderSide(color: Colors.blue)
              ),
              prefixIcon: const Icon(Icons.search, color: Colors.black,),
              hintText: 'Search',
            ),
            )
            ),
            const SizedBox(width: 20,),
            const Icon(Icons.notifications, color: Colors.grey,),
            const SizedBox(width: 20,),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(title: 'Sign Out',
                content: const Text('Are You Sure want to sign out?'),
                cancel: ElevatedButton(onPressed: ()=>Get.back() , child: const Text('Cencel'),),
                confirm: ElevatedButton(onPressed: () => Get.toNamed(Routes.LOGIN), child: const Text('Sign Out'),),
                );
              },
              child: Row(
                children: [
                  const Text('Sign Out', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            const SizedBox(width: 5,),
            const Icon(Icons.logout, color: Colors.grey,),
        ],),
      ),
      );
  }
}

