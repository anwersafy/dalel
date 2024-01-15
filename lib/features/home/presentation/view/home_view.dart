import 'package:dalel/core/utilis/app_assets.dart';
import 'package:dalel/core/utilis/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_header_text.dart';
import '../widgets/custom_App_bar.dart';
import '../widgets/custom_category_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox( height: 40,),

          ),

          SliverToBoxAdapter(
            child:CustomAppBarWidget(),

          ),
          SliverToBoxAdapter(
            child:CustomHeaderText(text: AppStrings.historicalPeriods),

          ),
          SliverToBoxAdapter(
            child:CustomCateogryListView(
              image: AppAssets.forgotPassword,
              text: AppStrings.general,
            ),

          ),
          SliverToBoxAdapter(
            child:CustomHeaderText(text: AppStrings.historicalCharacters),

          ),
          SliverToBoxAdapter(
            child:CustomCateogryListView(
              image: AppAssets.forgotPassword,
              text: AppStrings.general,
            ),

          ),
          SliverToBoxAdapter(
            child:CustomHeaderText(text: AppStrings.historicalSouvenirs),


          ),
          SliverToBoxAdapter(
            child:CustomCateogryListView(
              image: AppAssets.forgotPassword,
              text: AppStrings.general,
            ),

          ),

        ],
      ),

    );
  }
}


