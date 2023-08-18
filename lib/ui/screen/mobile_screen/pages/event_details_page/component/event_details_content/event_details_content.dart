import 'package:flutter/material.dart';
import 'package:local_events_app/utils/constant/text_style.dart';
import 'package:local_events_app/utils/functions/screen_size.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

class EventDetailsContent extends StatelessWidget {
  const EventDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = getWidth(context: context);
    final screenheight = getHeight(context: context);
    final eventContent =
        context.watch<CategoriesViewModel>().eventsDetailsAfterSelectEvent;
    final guestImageList = eventContent['guestImages'];
    final gallaryImageList = eventContent['galleryImages'];
    return ListView(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(left: 0.3 * screenWidth, top: 0.1 * screenheight),
          child: RichText(
            text: TextSpan(
                text: eventContent['title'], style: eventWhiteTitleTextStyle),
          ),
        ),
        const Icon(
          Icons.arrow_back,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 0.3 * screenWidth, bottom: 0.2 * screenheight),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                Text(eventContent['location'],
                    style:
                        eventLocationTextStyle.copyWith(color: Colors.white)),
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 0.03 * screenWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'GUESTS',
                  style: eventTitleTextStyle,
                ),
                SizedBox(
                  width: screenWidth,
                  height: 0.2 * screenheight,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: guestImageList.length,
                      itemBuilder: (_, index) => Padding(
                            padding: EdgeInsets.all(0.01 * screenWidth),
                            child: ClipOval(
                              child: Image.asset(
                                guestImageList[index],
                                fit: BoxFit.cover,
                                width: 0.4 * screenWidth,
                              ),
                            ),
                          )),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: '${eventContent['punchLine1']} ',
                    style: punchLine1TextStyle,
                  ),
                  TextSpan(
                    text: eventContent['punchLine2'],
                    style: punchLine2TextStyle,
                  )
                ])),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: .015 * screenheight),
                  child: Text(
                    eventContent['description'],
                    style: punchLine2TextStyle.copyWith(fontSize: 20),
                  ),
                ),
                const Text(
                  'GALLERY',
                  style: guestTextStyle,
                ),
                SizedBox(
                  width: screenWidth,
                  height: 0.19 * screenheight,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: gallaryImageList.length,
                      itemBuilder: (_, index) => Padding(
                            padding: EdgeInsets.all(0.01 * screenWidth),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(0.02 * screenWidth),
                              child: Image.asset(
                                gallaryImageList[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                )
              ],
            )),
      ],
    );
  }
}
