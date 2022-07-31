import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tradino_flutter/global/constant/colors.dart';
import 'package:tradino_flutter/global/widgets/market/market_select_widget.dart';
import 'package:tradino_flutter/global/widgets/strategy_cards.dart';

class HomePageBodyWidget extends StatelessWidget {
  const HomePageBodyWidget({
    Key? key,
    required this.flex,
  }) : super(key: key);
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          color: kCultured,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0.r),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 24.0.h),
              const MarketSelect(),
              SizedBox(
                height: 16.0.h,
              ),
              const StrategyCardsWidget(),
              SizedBox(
                height: 40.0.h,
              ),
              const StrategyCardsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
