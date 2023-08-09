  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_with_block/core/utils/app_icon.dart';
import 'package:homework_with_block/core/utils/app_images.dart';
import 'package:homework_with_block/main/bloc/main_bloc.dart';

class ListTileItems{



  static ListTile items({required String image,required String title,required String subtitle,required var iconBottom}){
    return  ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffF3F3F3),
        ),
        child:  Center(child: Image.asset(image,fit: BoxFit.cover,)),
      ),
      title:  Text(title,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff191D31),
            fontWeight: FontWeight.w600,)),

      subtitle:  Text(subtitle,style: const TextStyle(color: Color(0xff8C8E98),fontWeight: FontWeight.w400,fontSize: 12),),

      trailing: Container(
    height: 32,
    width: 120,
    decoration: BoxDecoration(
    color: const Color(0xffF3F3F3),
    borderRadius: BorderRadius.circular(50),
    ),
    child:iconBottom,
      ),
    );
  }

  }