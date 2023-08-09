

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_with_block/core/utils/app_icon.dart';
import 'package:homework_with_block/core/utils/app_images.dart';

class IconWidget{
   static Row item ({required String images,required String text}){
      return Row(
        children: [
          SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(images,fit: BoxFit.cover,)),
          const SizedBox(width: 5,),
           Text(text,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff191D31),),),
        ],
      );
   }
}


