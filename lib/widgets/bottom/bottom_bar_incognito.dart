import 'package:flutter/material.dart';
import 'package:love_chat/core/core.dart';
import 'package:love_chat/widgets/list_price.dart';

class BottomBarIncognito extends StatelessWidget {
  const BottomBarIncognito({super.key});

  @override
  Widget build(BuildContext context) {
    final itemCountList = [1, 3, 7];
    final itemPriceList = [99, 199, 399];

    return Container(
      color: AppColors.blackPurple,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Image(
              image: AppIcons.incognito,
            ),
          ),
          const Text(
            AppConstants.infoIncognito,
            style: AppTextStyle.large,
          ),
          const SizedBox(height: 24),
          const Text(
            AppConstants.textIncognito,
            style: AppTextStyle.mediumGrey,
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemCountList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: AppColors.whiteBlack,
                      borderRadius: BorderRadius.circular(8)),
                  width: 100,
                  height: 80,
                  margin:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      ListPrice(
                        itemCount: itemCountList[index],
                        price: itemPriceList[index],
                      ),
                      itemCountList[index] > 2
                          ? Container(
                              width: 50,
                              height: 12,
                              decoration: const BoxDecoration(
                                color: AppColors.yellow,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(30, 10),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'HIT!',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.blackPurple),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.pink,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                AppConstants.buy,
                style: AppTextStyle.mediumWhite,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            AppConstants.order,
            style: AppTextStyle.large,
          ),
        ],
      ),
    );
  }
}
