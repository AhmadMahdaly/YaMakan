import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/features/category/data/models/category_item_model.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({required this.item, super.key});

  final CategoryItemModel item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => item.categoryPage!,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(15.sp),
            width: 64.sp,
            height: 64.sp,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color(0xFFEBEBEB),
                ),
                borderRadius: BorderRadius.circular(15.sp),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 4,
                  offset: Offset(0, 3),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Image.asset(item.icon!),
          ),
          SizedBox(height: 10.sp),
          Text(
            item.title!,
            style: TextStyle(
              color: const Color(
                0xFF8A9493,
              ),
              fontSize: 11.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
