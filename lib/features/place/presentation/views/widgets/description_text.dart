import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class DescriptionTextWidget extends StatefulWidget {
  const DescriptionTextWidget({
    required this.text,
    super.key,
  });
  final String text;

  @override
  State<DescriptionTextWidget> createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 100) {
      firstHalf = widget.text.substring(
        0,
        100,
      );
      secondHalf = widget.text.substring(
        100,
        widget.text.length,
      );
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.sp,
        vertical: 8.sp,
      ),
      child: secondHalf.isEmpty
          ? Text(
              firstHalf,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            )
          : Column(
              children: <Widget>[
                Text(
                  flag ? '$firstHalf...' : (firstHalf + secondHalf),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w200,
                    height: 1.5,
                  ),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        flag ? 'ShowMore'.tr() : 'ShowLess'.tr(),
                        style: const TextStyle(
                          color: kMainColor,
                          decoration: TextDecoration.underline,
                          decorationColor: kMainColor,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
