import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:streakzy/common/styles/shadows.dart';
// import 'package:streakzy/common/styles/shadows.dart.dart';
import 'package:streakzy/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:streakzy/common/styles/widgets/icons/t_circular_icon.dart';
import 'package:streakzy/common/styles/widgets/images/SRounded_image.dart';
import 'package:streakzy/utils/constants/colors.dart';
import 'package:streakzy/utils/constants/image_strings.dart';
import 'package:streakzy/utils/constants/sizes.dart';
import 'package:streakzy/utils/helpers/helper_functions.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [SShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(SSizes.productImageRadius),
        color: dark ? SColors.darkerGrey : SColors.white,

      ),
      child: Column(
        children: [
          ///Thumbnail, wishlist, Discount tag
          SRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SSizes.sm),
              backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                //thumbnail img
                const SRoundedImage(imageUrl: SImages.promoBanner1, applyImageRadius: true,),

                // Sale Tag
                Positioned(
                  top: 12,
                  child: SRoundedContainer(
                    radius: SSizes.sm,
                    backgroundColor: SColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: SSizes.sm, vertical: SSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SColors.black)),
                  ),
                ),

                //Fav Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5, color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          //details

          Padding(
            padding: const EdgeInsets.only(left: SSizes.sm),
            child: Column(
              children: [
                Text(
                  'Yellow Bike Air Shoes',
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


