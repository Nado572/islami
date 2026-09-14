import 'package:flutter/material.dart';
import 'package:islamy/core/asssets_manager.dart';
import 'package:islamy/core/color_manager.dart';
class SuraItem extends StatelessWidget {
  const SuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(

          alignment: Alignment.center,
          children: [

            Image.asset(ImageAssets.sura_number_frame),
            Text("1",style: TextStyle(fontSize: 16,color: ColorManager.ofwhite,fontWeight: FontWeight.bold),),



          ],
        ),
        Column(children: [
          Text("Al-fatha", style: Theme.of(context).textTheme.titleSmall,),
          Text("7 verses", style: Theme.of(context).textTheme.titleSmall),
        ],),
        Spacer(),
        Text("الفاتحة", style: Theme.of(context).textTheme.titleSmall,),

      ],
    );
  }
}
