import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/constant/text_styles.dart';
import 'package:tradino_flutter/global/widgets/market/each_market_widget.dart';
import 'package:tradino_flutter/screens/home_page/home_page_controller.dart';

class MarketSelect extends StatelessWidget {
  const MarketSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = Get.find();

    return Obx(
      () {
        return Container(
          width: 340.0.w,
          height: 48.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0.r),
            color: kCharcoal,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.changeTabIndex(0);
                  },
                  child: controller.tabIndex.value == 0
                      ? EachMarketWidget(
                          title: "forex",
                          style: kSemiBoldCharcoal16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0.r),
                            gradient: kGreenLinearLeftToRight,
                          ),
                        )
                      : EachMarketWidget(
                          title: "forex",
                          style: kSemiBoldLinear14,
                        ),
                ),
                TextButton(
                  onPressed: () {
                    controller.changeTabIndex(1);
                  },
                  child: controller.tabIndex.value == 1
                      ? EachMarketWidget(
                          title: "stock",
                          style: kSemiBoldCharcoal16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0.r),
                            gradient: kGreenLinearLeftToRight,
                          ),
                        )
                      : EachMarketWidget(
                          title: "stock",
                          style: kSemiBoldLinear14,
                        ),
                ),
                TextButton(
                  onPressed: () {
                    controller.changeTabIndex(2);
                  },
                  child: controller.tabIndex.value == 2
                      ? EachMarketWidget(
                          title: "crypto",
                          style: kSemiBoldCharcoal16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0.r),
                            gradient: kGreenLinearLeftToRight,
                          ),
                        )
                      : EachMarketWidget(
                          title: "crypto",
                          style: kSemiBoldLinear14,
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
