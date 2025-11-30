import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';

class NextArrow extends StatelessWidget {
  const NextArrow({
    required this.path,
    super.key,
  });

  final Widget path;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.sp,
      width: 32.sp,
      margin: EdgeInsets.all(10.sp),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kMainColor,
      ),
      child: IconButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => path),
        ),
        icon: RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ToNextPage extends StatelessWidget {
  const ToNextPage({
    required this.path,
    super.key,
  });

  final Widget path;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => path),
      ),
      child: CircleAvatar(
        backgroundColor: kMainColor,
        child: RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16.sp,
            color: Colors.white,
          ),
        ),
      ),
    );

//      Container(
//       height: 32.sp,
//       width: 32.sp,
//  margin: EdgeInsets.all(10.sp,),
//       decoration: BoxDecoration(
//         shape : BoxShape.circle,
//         color: KMainColor,
//       ),
//       child: IconButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) {
//                 return path;
//               },
//             ),
//           );
//         },
//         icon: RotatedBox(

//           quarterTurns: 2,
//           child: const Icon(
//             Icons.arrow_back_ios,
//             size: 16.sp,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
  }
}
