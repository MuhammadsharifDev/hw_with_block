import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_with_block/core/utils/app_icon.dart';
import 'package:homework_with_block/core/utils/app_images.dart';
import 'package:homework_with_block/main/bloc/main_bloc.dart';
import 'package:homework_with_block/main/widgets/listtile_widget.dart';
import 'package:homework_with_block/main/widgets/row_icon_widgets.dart';

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
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                expandedHeight: 407,
                pinned: true,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios_new)),
                  ),
                ),
                title: const Center(child: Text('Detail Menu',style: TextStyle(fontSize:25,fontWeight: FontWeight.w600,color: Colors.white),)),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(onPressed: (){
                        context.read<MainBloc>().add(IsLikeEvent(isLike: !state.isLike));
                      }, icon: Icon(state.isLike?Icons.favorite:Icons.favorite_border,color: state.isLike?Colors.red:Colors.grey,)),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    AppImages.menu_image,
                    fit: BoxFit.cover,
                  ),
                ),

              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 19,
                      ),
                      const Text(
                        'Noodles',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Fried grill noodles with\negg special",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          Container(
                            height: 32,
                            width: 120,
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(70),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){
                                    context.read<MainBloc>().add(DecrementEvent(state.number,));
                                  }, icon:  SvgPicture.asset(AppIcon.remove_icon),),
                                   Text(state.number.toString()),
                                  IconButton(onPressed: (){
                                    context.read<MainBloc>().add(IncrementEvent(state.number,));
                                  }, icon:  SvgPicture.asset(AppIcon.add_icon),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rating',
                            style: TextStyle(
                                color: Color(0xff8C8E98), fontSize: 14),
                          ),
                          Text(
                            'Calories',
                            style: TextStyle(
                                color: Color(0xff8C8E98), fontSize: 14),
                          ),
                          Text(
                            'Time',
                            style: TextStyle(
                                color: Color(0xff8C8E98), fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         IconWidget.item(images: AppImages.star_image, text: '4.5'),
                         IconWidget.item(images: AppImages.fire_image, text: '124 Kcal'),
                         IconWidget.item(images: AppImages.clock_image, text: '15 min'),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xff191D31)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                    '''Hello,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum tempor lorem, sed placerat est rutrum a. Nullam non dolor tempus, feugiat risus sed, fermentum arcu. Sed euismod, orci nec fringilla semper, urna tellus vehicula enim, non euismod ante erat nec nu '''),
                            TextSpan(
                              text: 'Read more',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Add Extra Ingredients',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff191D31),
                              fontWeight: FontWeight.w600,)),
                      const SizedBox(height: 16,),

                      ListTileItems.items(image: AppImages.mustard_image, title: 'Mustard', subtitle: '1 Grm', iconBottom:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(FirstElementMinusEvent(state.count));
                          }, icon: SvgPicture.asset(AppIcon.remove_icon),),
                          Text(state.count.toString()),
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(FirstElementEvent(
                               state.count
                            ));
                          }, icon: SvgPicture.asset(AppIcon.add_icon),),

                        ],
                      ),
                      ),
                      const SizedBox(height: 16,),
                      ListTileItems.items(image: AppImages.beef_image, title: 'Beef', subtitle: '1 Slice', iconBottom:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(SecondElementMinusEvent( state.secondNumber));
                          }, icon: SvgPicture.asset(AppIcon.remove_icon),),
                          Text(state.secondNumber.toString()),
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(SecondElementEvent( state.secondNumber));
                          }, icon: SvgPicture.asset(AppIcon.add_icon),),

                        ],
                      ),),
                      const SizedBox(height: 16,),

                      ListTileItems.items(image: AppImages.mushroom_image, title: 'Mushroom', subtitle: '1 Piece', iconBottom:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(ThirteenElementMinusEvent( state.thirdNumber));
                          }, icon: SvgPicture.asset(AppIcon.remove_icon),),
                          Text(state.thirdNumber.toString()),
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(ThirteenElementEvent(state.thirdNumber));
                          }, icon: SvgPicture.asset(AppIcon.add_icon),),

                        ],
                      ),
                      ),
                      const SizedBox(height: 16,),

                      ListTileItems.items(image: AppImages.onion_image, title: 'Onion', subtitle: '1 Clove', iconBottom: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(FourteenElementMinusEvent( state.fourNumber));
                          }, icon: SvgPicture.asset(AppIcon.remove_icon),),
                          Text(state.fourNumber.toString()),
                          IconButton(onPressed: (){
                            context.read<MainBloc>().add(FourteenElementEvent(state.fourNumber));
                          }, icon: SvgPicture.asset(AppIcon.add_icon),),

                        ],
                      ),),
                      const SizedBox(height: 15,),
                      const Text('Location',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff191D31),),),
                      const SizedBox(height: 15,),
                      Image.asset(AppImages.location_image),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/png_images/price.jpg'),
                          Container(
                            height: 56,
                            width: 157,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xffF86A2E),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppIcon.bag_icon),
                                  const Text('Add to Cart',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
