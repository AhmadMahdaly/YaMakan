import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yamakan/core/constants/color_constants.dart';
import 'package:yamakan/features/events/data/models/event_page_model.dart';
import 'package:yamakan/features/events/presentation/views/widgets/event_page_widget.dart';
import 'package:yamakan/features/events/presentation/views/widgets/events_card_widget.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final eventsList = <EventPageModel>[
      EventPageModel(
        eventPage: EventsPagesWidget(
          page: EventPageModel(
            image:
                'assets/images/home_page/events/007502484d50901bda92d197f43fc4f8.jpg',
            name: 'SoundAndLight'.tr(),
            locationName: 'Pyramids'.tr(),
            locationUrl: 'https://maps.app.goo.gl/9zkBNivLXB5aW8RZ7',
            bookUrl: 'https://www.soundandlight.show/ar',
            about: 'SoundAndLightAbout'.tr(),
            day: 'Saturday'.tr(),
            date: '17 ${"August".tr()}\n',
            time: 'SoundAndLightTime'.tr(),
            fees: '900 ${"EGP".tr()}',
          ),
        ),
        image:
            'assets/images/home_page/events/007502484d50901bda92d197f43fc4f8.jpg',
        locationName: 'Pyramids'.tr(),
        name: 'SoundAndLight'.tr(),
        day: '${"Saturday".tr()}\n17 ${"August".tr()}',
        time: 'SoundAndLightTime'.tr(),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.sp,
        automaticallyImplyLeading: false,
        title: Text(
          'UpcomingEvents'.tr(),
          style: TextStyle(
            color: kMainColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: eventsList.length,
        itemBuilder: (context, index) => EventsCardWidget(
          event: eventsList[index],
        ),
      ),
    );
  }
}
