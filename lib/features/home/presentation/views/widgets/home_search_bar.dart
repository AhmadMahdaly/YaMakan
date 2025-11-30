import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/data/places_data_search.dart';
import 'package:yamakan/features/place/data/models/page_model.dart';
import 'package:yamakan/features/place/presentation/views/place_page.dart';
// استدعاء ملف البيانات الذي أنشأناه في الخطوة 1
// import 'path/to/places_data.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({required this.hint, super.key});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: CustomSearchDelegate(),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 12.sp),
        decoration: BoxDecoration(
          color: const Color(0xffFEF7FF),
          borderRadius: BorderRadius.circular(24.sp),
          border: Border.all(color: const Color(0xFFE5E5E5)),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: const Color(0x9989898A),
              size: 24.sp,
            ),
            SizedBox(width: 8.sp),
            Text(
              hint,
              style: TextStyle(
                color: const Color(0x9989898A),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  // دالة مساعدة لتصفية النتائج
  List<PageModel> _filterPlaces(String query) {
    if (query.isEmpty) {
      return []; // أو يمكنك إرجاع قائمة مقترحة افتراضية
    }
    return allPlacesData.where((place) {
      return place.placeName!.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: Icon(Icons.clear, color: kMainColor, size: 24.sp),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: kMainColor, size: 24.sp),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = _filterPlaces(query);

    if (results.isEmpty) {
      return Center(
        child: Text('لا توجد نتائج', style: TextStyle(fontSize: 16.sp)),
      );
    }

    return _buildList(results, context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = _filterPlaces(query);

    if (suggestions.isEmpty && query.isEmpty) {
      // يمكنك هنا عرض اقتراحات عشوائية أو التاريخ السابق
      return const SizedBox();
    }

    return _buildList(suggestions, context);
  }

  // ويدجت موحدة لبناء القائمة لتجنب التكرار
  Widget _buildList(List<PageModel> places, BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16.sp),
      itemCount: places.length,
      separatorBuilder: (context, index) =>
          Divider(height: 1, color: Colors.grey[300]),
      itemBuilder: (context, index) {
        final place = places[index];
        return ListTile(
          contentPadding: EdgeInsets.zero,
          // تحسين: عرض صورة مصغرة للمكان بجانب الاسم
          leading: (place.imagePaths!.isNotEmpty)
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(8.sp),
                  child: Image.network(
                    place.imagePaths!.first,
                    width: 50.sp,
                    height: 50.sp,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.image_not_supported,
                      color: Colors.grey,
                    ),
                  ),
                )
              : const Icon(Icons.location_on, color: kMainColor),
          title: Text(
            place.placeName ?? '',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            place.descriptionText ?? '', // عرض جزء بسيط من الوصف
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
          onTap: () {
            // السحر هنا: ننتقل مباشرة باستخدام الموديل دون أي if-else
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PlacePageCategory(place: place),
              ),
            );
          },
        );
      },
    );
  }
}
