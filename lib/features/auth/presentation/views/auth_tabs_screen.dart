import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/auth/presentation/views/login/login_page.dart';
import 'package:yamakan/features/auth/presentation/views/sign_up/sign_up_page.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Widget> _tabs = [
    const LoginPage(),
    const SignUpPage(),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // عدد العلامات التبويب
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120.sp,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding: EdgeInsets.only(
              // right: 16.sp,
              // left: 16.sp,
              top: 8.sp,
              bottom: 8.sp,
            ),
            title: TabBar(
              // padding: EdgeInsets.symmetric(horizontal: 16.sp,),
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              indicator: const BoxDecoration(
                border: BorderDirectional(
                  bottom: BorderSide(color: kMainColor, width: 2),
                ),
              ),
              unselectedLabelColor: const Color(0xffA9A9A9),
              automaticIndicatorColorAdjustment: false,
              labelPadding: EdgeInsets.symmetric(horizontal: 50.sp),
              labelStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              dividerHeight: 0.5.sp,
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.fill,
              controller: _tabController,
              tabs: [
                Tab(
                  child:
                      // توسيع الفراغ بين الأيقونة والنص
                      Text(
                    'SignIn'.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _currentIndex == 0
                          ? kMainColor
                          : const Color(0xffA9A9A9),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'SignUp'.tr(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _currentIndex == 1
                          ? kMainColor
                          : const Color(0xffA9A9A9),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Tab(
          //   child: Row(
          //     children: [
          //       SvgPicture.asset(
          //           'assets/images/items/category/activities/tree 1.svg',
          //           width: 20,
          //           // ignore: deprecated_member_use
          //           color: _currentIndex == 4
          //               ? Colors.white
          //               : const Color(0xffA9A9A9)),
          //       const SizedBox(width: 4),
          //       const Text('Activities')
          //       ],
          //     ),
          //   ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _tabs,
        ),
      ),
    );
  }
}
