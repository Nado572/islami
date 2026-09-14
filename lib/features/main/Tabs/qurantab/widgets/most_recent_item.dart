import 'package:flutter/material.dart';
import 'package:islamy/core/asssets_manager.dart';
import 'package:islamy/core/color_manager.dart';



class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
      decoration: BoxDecoration(
        color: ColorManager.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Al-Fatiha", style: Theme
                  .of(context)
                  .textTheme
                  .labelLarge,),
              Text("الفاتحة", style: Theme
                  .of(context)
                  .textTheme
                  .labelLarge,),
              Text("7 verses ", style: Theme
                  .of(context)
                  .textTheme
                  .labelLarge,),
            ],
          ),

          Image.asset(ImageAssets.most_recent)
        ],
      ),
    );

  }
}
