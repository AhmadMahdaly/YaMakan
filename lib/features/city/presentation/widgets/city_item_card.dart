import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/shared_models/item_model.dart';

class CityItemCard extends StatelessWidget {
  const CityItemCard({required this.item, super.key});

  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => item.page!,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.sp,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(item.image!),
          ),
        ),
        width: 120.sp,
        height: 120.sp,
        child: Padding(
          padding: EdgeInsets.all(
            16.sp,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.text!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // Attraction
              Text(
                '${item.qtyPlaces!.length} ' '${'Attraction'.tr()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
