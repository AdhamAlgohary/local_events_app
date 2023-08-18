import 'package:flutter/material.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/home_page/component/home_page_background/home_page_background.dart';
import 'package:local_events_app/ui/screen/mobile_screen/pages/home_page/component/event_widget/event_widget.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

import 'component/category_widget/category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List lis1 = context.watch<CategoriesViewModel>().eventsAfterSelectCategory;
    void refresh(List eventList) {
      lis1 = eventList;
      setState(() {});
    }

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            const HomePageBackGround(),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                CategoryWidget(
                  refreshHomePage: refresh,
                ),
                EventWidget(
                  eventsList: lis1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
