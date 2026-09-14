import 'package:flutter/material.dart';
import 'package:islamy/core/asssets_manager.dart';
import 'package:islamy/core/color_manager.dart';
import 'package:islamy/features/main/Tabs/hadith_tab/hadith_tab.dart';
import 'package:islamy/features/main/Tabs/qurantab/quran_tab.dart';
import 'package:islamy/features/main/Tabs/raido_tab/radio_tab.dart';
import 'package:islamy/features/main/Tabs/sebha_tab/sebha_tab.dart';
import 'package:islamy/features/main/Tabs/time_tab/time_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
     QuranTab(),
    HadithTab(),
    RadioTab(),
    SebhaTab(),
    TimeTab(),
  ];

  int selctedindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selctedindex],
      bottomNavigationBar: _buildbottomnavigationbar,
    );
  }

  Widget get _buildbottomnavigationbar{
    return BottomNavigationBar(
      currentIndex: selctedindex,
      onTap: (tappedindex){

        setState(() {
          selctedindex=tappedindex;

        });
      },

      items: [
        BottomNavigationBarItem(
          icon: _buildic(icon: IconAssets.quran,isSelected: selctedindex==0),
          label: "quran",
        ),
        BottomNavigationBarItem(
          icon: _buildic(icon: IconAssets.hadieth,isSelected: selctedindex==1),
          label: "hadith",
        ),
        BottomNavigationBarItem(
          icon: _buildic(icon: IconAssets.sebha,isSelected: selctedindex==2),

          label: "tasbeeh",
        ),
        BottomNavigationBarItem(
          icon: _buildic(icon: IconAssets.radio,isSelected: selctedindex==3),

          label: "radio",
        ),
        BottomNavigationBarItem(
          icon: _buildic(icon: IconAssets.time,isSelected: selctedindex==4),

          label: "time",
        ),
      ],
    );
  }
  Widget _buildic({required bool isSelected, required String icon}){
    return isSelected ? Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(122),
        borderRadius: BorderRadius.circular(66),
      ),

      child:  ImageIcon(AssetImage(icon)))
        :ImageIcon(AssetImage(icon));
}
}
