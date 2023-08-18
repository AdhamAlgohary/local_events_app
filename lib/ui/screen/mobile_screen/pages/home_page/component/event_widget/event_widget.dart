import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/home_page/home_page_functions/select_event_on_tap_func.dart';
import 'package:local_events_app/utils/constant/text_style.dart';
import 'package:local_events_app/utils/functions/screen_size.dart';

class EventWidget extends StatefulWidget {
  final List eventsList;
  const EventWidget({super.key, required this.eventsList});

  @override
  State<EventWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  @override
  Widget build(BuildContext context) {
    final height = getHeight(context: context);
    final width = getWidth(context: context);
    return SizedBox(
      height: 0.6 * height,
      child: ListView.builder(
          itemCount: widget.eventsList.length,
          itemBuilder: (_, index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.05 * width)),
                margin: EdgeInsets.symmetric(
                    horizontal: 0.025 * width, vertical: 0.03 * height),
                color: Colors.white,
                elevation: 40,
                child: Padding(
                  padding: EdgeInsets.all(0.02 * width),
                  child: Selector<CategoriesViewModel, List>(
                      selector: (_, p1) => p1.categories,
                      builder: (_, __, ___) {
                        return InkWell(
                          onTap: () => selectEventOnTapFunc(context, index),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(0.05 * width),
                                  child: Image.asset(
                                      widget.eventsList[index]['imagePath'])),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0.02 * width),
                                child: Text(
                                  widget.eventsList[index]['title'],
                                  style: eventTitleTextStyle,
                                ),
                              ),
                              FittedBox(
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_on),
                                    Text(
                                      widget.eventsList[index]['location'],
                                      style: eventLocationTextStyle,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 0.4 * width),
                                      child: SpinKitWaveSpinner(
                                        duration: const Duration(hours: 1),
                                        size: 0.2 * width,
                                        color: Colors.grey,
                                        trackColor: Colors.transparent,
                                        child: Center(
                                          child: Text(
                                            widget.eventsList[index]
                                                ['duration'],
                                            style:
                                                eventLocationTextStyle.copyWith(
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              )),
    );
  }
}
