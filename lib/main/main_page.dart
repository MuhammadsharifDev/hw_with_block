import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_with_block/core/utils/app_icon.dart';
import 'package:homework_with_block/core/utils/app_images.dart';
import 'package:homework_with_block/main/bloc/main_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 407,
                flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        AppImages.menu_image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: 50,
                        left: 20,
                        child: SvgPicture.asset(AppIcon.back_icon)),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite_border),
                      ),

                    ),
                  )
                ],
              ),

               SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height:19,),
                      const Text('Noodles',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight:FontWeight.w700),),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Fried grill noodles with\negg special",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),),
                          Container(
                            height: 32,
                            width: 105,
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                                  Text('0'),
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rating',style: TextStyle(color: Color(0xff8C8E98),fontSize: 14),),
                          Text('Calories',style: TextStyle(color: Color(0xff8C8E98),fontSize: 14),),
                          Text('Time',style: TextStyle(color: Color(0xff8C8E98),fontSize: 14),),
                        ],
                      ),
                      const SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(AppIcon.stars_icon),
                              const SizedBox(width: 5,),
                              const Text('4.8',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff191D31),),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
