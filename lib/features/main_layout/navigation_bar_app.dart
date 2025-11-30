import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/shared_widgets/show_exit_confirmation.dart';
import 'package:yamakan/features/events/presentation/views/events_page.dart';
import 'package:yamakan/features/home/presentation/views/home_page_view.dart';
import 'package:yamakan/features/profile/presentation/views/profile_page.dart';
// import 'package:yamkan/screens/wishlist.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({super.key});

  @override
  State<MainLayoutPage> createState() => MainLayoutPageState();
}

class MainLayoutPageState extends State<MainLayoutPage> {
  int _selectedIndex = 0;
  double iconSize = 30.sp;

  List<Widget> pages = [
    const HomePage(),
    const EventsPage(),
    // const WishlistPage(),
    const ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        final shouldExit = await showExitConfirmation(context);
        return shouldExit!;
      },
      child: Scaffold(
        body: pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: kUnSelectItemColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: kMainColor,
          unselectedLabelStyle: TextStyle(
            color: kUnSelectItemColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
          elevation: 50,
          iconSize: 24.sp,
          items: [
            /// Discover button
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home_page/bottom_nav_bar/discovery 2.svg',
                width: iconSize,
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? kMainColor : kUnSelectItemColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'DiscoverButton'.tr(),
            ),

            /// Event button
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home_page/bottom_nav_bar/calender 1.svg',
                width: iconSize,
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 1 ? kMainColor : kUnSelectItemColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'EventsButton'.tr(),
            ),

            /// SaveList button
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset(
            //     'assets/images/home_page/bottom_nav_bar/saved 1.svg',
            //     width: iconSize,
            //     // ignore: deprecated_member_use
            //     color: _currentIndex == 2
            //         ?  kMainColor
            //         : kUnSelectItem,
            //   ),
            //   label: S.of(context).WishlistButton,
            // ),

            /// Profile button
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home_page/bottom_nav_bar/profile.svg',
                width: iconSize,
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 2 ? kMainColor : kUnSelectItemColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'ProfileButton'.tr(),
            ),
          ],
        ),
      ),
    );
  }
}
