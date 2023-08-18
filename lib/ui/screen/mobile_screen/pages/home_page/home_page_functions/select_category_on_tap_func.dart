import 'package:flutter/material.dart';
import 'package:local_events_app/utils/functions/print.dart';
import 'package:local_events_app/view_model/categories_view_model.dart';
import 'package:provider/provider.dart';

void selectCategoryOnTapFunc(
    {required BuildContext context, required int index}) {
  try {
    final isSelectd = Provider.of<CategoriesViewModel>(context, listen: false)
            .categories[index]['categoryId'] ==
        Provider.of<CategoriesViewModel>(context, listen: false).selectCategory;

    context
        .read<CategoriesViewModel>()
        .getEventsAfterSelectCategories(index: index);
    !isSelectd
        ? context.read<CategoriesViewModel>().updateSelctedCategory(index)
        : null;
  } on AssertionError catch (exception) {
    checkDebugMode('asserton exception is ${exception.message}');
  } catch (e) {
    checkDebugMode('exception is $e');
  }
}
