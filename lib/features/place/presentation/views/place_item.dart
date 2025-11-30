import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/shared_models/item_model.dart';

class Item extends StatelessWidget {
  const Item({required this.item, super.key});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => item.page!,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.sp),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              item.image!,
            ),
          ),
        ),
        width: 100.sp,
        height: 100.sp,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Text(
            item.text!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              height: 1.09.sp,
            ),
          ),
        ),
      ),
    );
  }
}
