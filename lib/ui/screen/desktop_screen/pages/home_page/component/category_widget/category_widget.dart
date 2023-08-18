import 'package:flutter/material.dart';
import 'package:local_events_app/ui/screen/desktop_screen/pages/home_page/home_page_functions/select_category_on_tap_func.dart';
import 'package:local_events_app/utils/constant/text_style.dart';
import 'package:local_events_app/utils/functions/screen_size.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

class CategoryWidget extends StatefulWidget {
  final void Function(List eventsList) refreshHomePage;

  const CategoryWidget({super.key, required this.refreshHomePage});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    final eventsList =
        context.watch<CategoriesViewModel>().eventsAfterSelectCategory;
    final height = getHeight(context: context);
    final width = getWidth(context: context);
    var primaryColor = Theme.of(context).primaryColor;
    return SizedBox(
      height: 0.3 * height,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 0.03 * width, top: 0.015 * height, right: 0.03 * width),
            child: const Row(
              children: <Widget>[
                Text(
                  'LOCAL EVENTS',
                  style: fadedTextStyle,
                ),
                Spacer(),
                Icon(
                  Icons.person_outline,
                  color: Color(0xFFFFFFFF),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.03 * width),
            child: const Text(
              'What\'s Up',
              style: whiteHeadingTextStyle,
            ),
          ),
          SizedBox(
            height: 0.2 * height,
            width: 0.5 * width,
            child: Selector<CategoriesViewModel, List>(
              selector: (_, p1) => p1.categories,
              builder: (_, categories, __) => ListView.builder(
                  padding: EdgeInsets.symmetric(
                      vertical: 0.04 * height, horizontal: 0.02 * width),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (_, index) {
                    final isSelectd = categories[index]['categoryId'] ==
                        context.watch<CategoriesViewModel>().selectCategory;
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 0.01 * width),
                      padding: EdgeInsets.symmetric(
                          horizontal: 0.002 * width, vertical: 0.002 * width),
                      width: 0.06 * width,
                      decoration: BoxDecoration(
                          color: isSelectd ? Colors.white : primaryColor,
                          border: Border.all(
                              color: const Color.fromARGB(104, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(0.01 * width)),
                      child: Material(
                        color: isSelectd ? Colors.white : primaryColor,
                        child: InkWell(
                          hoverColor: const Color(0x68FFFFFF),
                          onTap: () {
                            selectCategoryOnTapFunc(
                                context: context, index: index);
                            widget.refreshHomePage(eventsList);
                            setState(() {});
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                categories[index]['icon'],
                                color: isSelectd ? primaryColor : Colors.white,
                              ),
                              FittedBox(
                                child: Text(
                                  categories[index]['name'],
                                  style: isSelectd
                                      ? selectedCategoryTextStyle
                                      : categoryTextStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
