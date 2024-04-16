import 'package:flutter/material.dart';
import '../assets/app_colors.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key,});
  // final Category category;

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  

  // late List carData;
  // ReadData()async{
  //   await DefaultAssetBundle.of(context).loadString("jason").then((s) => setState((){
  //     carData = jsonDecode(s);
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
      itemBuilder: (_, i) {        return Container(
          margin:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.tabBarViewColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  offset: const Offset(0, 0),
                  color: Colors.grey.withOpacity(0.2),
                ),
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:  const DecorationImage(
                          image:  AssetImage("images/1.png"),
                        ),
                        ),
                  ),
                  const Text("Abdelrahman Ashraf"),
                ],
              ),
            ),
          ),
        );
      },
    ),);
  }
}
