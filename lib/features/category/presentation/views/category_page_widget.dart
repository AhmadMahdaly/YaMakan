import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/core/shared_models/item_model.dart';
import 'package:yamakan/features/category/presentation/views/grid_places_widget.dart';
import 'package:yamakan/features/home/presentation/views/widgets/home_search_bar.dart';

class CategoryPageItems extends StatefulWidget {
  const CategoryPageItems({
    required this.categoryLists,
    required this.title,
    super.key,
  });

  final List<List<ItemModel>> categoryLists;
  final String title;

  @override
  State<CategoryPageItems> createState() => _CategoryPageItemsState();
}

class _CategoryPageItemsState extends State<CategoryPageItems>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 6,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 110.sp,
          title: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: kMainColor,
                      size: 24.sp,
                    ), // تغيير لون الأيقونة هنا
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              PreferredSize(
                preferredSize: Size.fromHeight(50.sp),
                child: Builder(
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(bottom: 4.sp),
                    child: HomeSearchBar(
                      hint: '${'SearchBarTitle'.tr()} ',
                      // '${widget.title}',
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            padding: EdgeInsets.symmetric(
              horizontal: 16.sp,
              vertical: 8.sp,
            ),
            indicator: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(16.sp),
            ),
            unselectedLabelColor: const Color(0xffA9A9A9),
            automaticIndicatorColorAdjustment: false,
            labelColor: Colors.white,
            indicatorColor: kMainColor,
            labelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: _controller,
            onTap: (index) => setState(() {
              _controller.index = index;
            }),
            physics: const BouncingScrollPhysics(),
            tabs: [
              Tab(child: Text('Cairo'.tr())),
              Tab(child: Text('Giza'.tr())),
              Tab(child: Text('Alex'.tr())),
              Tab(child: Text('Portsaid'.tr())),
              Tab(child: Text('Fayoum'.tr())),
              Tab(child: Text('Aswan'.tr())),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            GridPlacesWidget(list: widget.categoryLists[0]),
            GridPlacesWidget(list: widget.categoryLists[1]),
            GridPlacesWidget(list: widget.categoryLists[2]),
            GridPlacesWidget(list: widget.categoryLists[3]),
            GridPlacesWidget(list: widget.categoryLists[4]),
            GridPlacesWidget(list: widget.categoryLists[5]),
          ],
        ),
      ),
    );
  }
}
