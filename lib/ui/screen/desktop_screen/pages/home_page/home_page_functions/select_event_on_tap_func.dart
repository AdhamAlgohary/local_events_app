import 'package:flutter/material.dart';
import 'package:local_events_app/ui/screen/desktop_screen/pages/event_details_page/event_details_page.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

void selectEventOnTapFunc(BuildContext context, int index) {
  Provider.of<CategoriesViewModel>(context, listen: false)
          .eventsDetailsAfterSelectEvent =
      Provider.of<CategoriesViewModel>(context, listen: false)
          .eventsAfterSelectCategory[index];
  Navigator.push(
      context, MaterialPageRoute(builder: (_) => const EventDetailsPage()));
}
