import 'package:flutter/material.dart';
import 'package:islamy/core/asssets_manager.dart';
import 'package:islamy/core/color_manager.dart';
import 'package:islamy/extentions/context_extention.dart';
import 'package:islamy/features/main/Tabs/qurantab/widgets/most_recent_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:islamy/features/main/Tabs/qurantab/widgets/sura_item.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageAssets.quran_tab_background),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(ImageAssets.islami_logo),
          SizedBox(height: context.getHeight * 0.02),
          TextField(
            cursorColor: ColorManager.gold,
            style: TextStyle(color: ColorManager.ofwhite, fontSize: 16),
            decoration: InputDecoration(
              prefixIcon: ImageIcon(AssetImage(IconAssets.quran)),
              hintText: "Sura name",
            ),
          ),
          SizedBox(height: context.getHeight * 0.02),
          Text("Most recently", style: Theme.of(context).textTheme.titleSmall),
          SizedBox(height: context.getHeight * 0.011),
          SizedBox(
            height: context.getHeight * 0.17,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 8),
              itemBuilder: (context, index) => MostRecentItem(),

              itemCount: 10,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Suras List",
            style: textTheme.titleSmall,
          ),

          SizedBox(height: 12),
          Expanded(
            child: Container(

              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => SuraItem(),
                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 64),
                  height: 2,
                  width: double.infinity,
                  color: ColorManager.ofwhite,
                ),
                itemCount: 114,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
