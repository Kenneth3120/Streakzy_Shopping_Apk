import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:streakzy/common/styles/widgets/appbar/appbar.dart';
import 'package:streakzy/common/styles/widgets/custom_shapes/containers/circular_container.dart';
import 'package:streakzy/common/styles/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:streakzy/common/styles/widgets/custom_shapes/containers/search_container.dart';
import 'package:streakzy/common/styles/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:streakzy/common/styles/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:streakzy/common/styles/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:streakzy/common/styles/widgets/images/SRounded_image.dart';
import 'package:streakzy/common/styles/widgets/products/cart/cart_menu_icon.dart';
import 'package:streakzy/common/styles/widgets/products/product_cards/product_card_vertical.dart';
import 'package:streakzy/common/styles/widgets/texts/section_heading.dart';
import 'package:streakzy/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:streakzy/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:streakzy/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:streakzy/utils/constants/colors.dart';
import 'package:streakzy/utils/constants/image_strings.dart';
import 'package:streakzy/utils/constants/sizes.dart';
import 'package:streakzy/utils/constants/text_strings.dart';
import 'package:streakzy/utils/device/device_utility.dart';
import 'package:streakzy/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  SHomeAppBar(),
                  SizedBox(height: SSizes.spaceBtwSections),
                  SSearchContainer(text: 'Search in store'),
                  SizedBox(height: SSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: SSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        SSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: SSizes.spaceBtwItems),

                        //Categories
                        SHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: SSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                  children: [
                SPromoSlider(banners: [SImages.promoBanner1, SImages.promoBanner2, SImages.promoBanner3],),
                SizedBox(height: SSizes.spaceBtwSections),
                    SProductCardVertical(),
                  ],
              ),
      ),
            const SizedBox(height: SSizes.spaceBtwSections),
    ],
    ),
    ),
    );
  }
}


