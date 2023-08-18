import 'package:flutter/material.dart';

class CategoriesViewModel extends ChangeNotifier {
  CategoriesViewModel();
  var selectCategory = 0;
  Map<String, dynamic> eventsDetailsAfterSelectEvent = {};

  List eventsAfterSelectCategory = [
    {
      'imagePath': "assets/event_images/5_km_downtown_run.jpeg",
      'title': "5 Kilometer Downtown Run",
      'description': "",
      'location': "Pleasant Park",
      'duration': "3h",
      'punchLine1': "Marathon!",
      'punchLine2': "The latest fad in foodology, get the inside scoup.",
      'galleryImages': [],
      'categoryIds': [0, 1],
      'guestImages': [
        "assets/guest_images/guest1.jpg",
        "assets/guest_images/guest2.jpg",
        "assets/guest_images/guest3.jpg",
        "assets/guest_images/guest4.jpeg",
        "assets/guest_images/guest5.jpg",
        "assets/guest_images/guest6.jpg"
      ]
    },
    {
      'imagePath': "assets/event_images/granite_cooking_class.jpeg",
      'title': "Granite Cooking Class",
      'description':
          "Guest list fill up fast so be sure to apply before handto secure a spot.",
      'location': "Food Court Avenue",
      'duration': "4h",
      'punchLine1': "Granite Cooking",
      'punchLine2': "The latest fad in foodology, get the inside scoup.",
      'categoryIds': [0, 2],
      'galleryImages': [
        "assets/event_images/cooking_1.jpeg",
        "assets/event_images/cooking_2.jpeg",
        "assets/event_images/cooking_3.jpeg"
      ],
      'guestImages': [
        "assets/guest_images/guest1.jpg",
        "assets/guest_images/guest2.jpg",
        "assets/guest_images/guest3.jpg",
        "assets/guest_images/guest4.jpeg",
        "assets/guest_images/guest5.jpg",
        "assets/guest_images/guest6.jpg"
      ]
    },
    {
      'imagePath': "assets/event_images/music_concert.jpeg",
      'title': "Arijit Music Concert",
      'description': "Listen to Arijit's latest compositions.",
      'location': "D.Y. Patil Stadium, Mumbai",
      'duration': "5h",
      'punchLine1': "Music Lovers!",
      'punchLine2': "The latest fad in foodology, get the inside scoup.",
      'galleryImages': [
        "assets/event_images/cooking_1.jpeg",
        "assets/event_images/cooking_2.jpeg",
        "assets/event_images/cooking_3.jpeg"
      ],
      'categoryIds': [0, 1],
      'guestImages': [
        "assets/guest_images/guest1.jpg",
        "assets/guest_images/guest2.jpg",
        "assets/guest_images/guest3.jpg",
        "assets/guest_images/guest4.jpeg",
        "assets/guest_images/guest5.jpg",
        "assets/guest_images/guest6.jpg"
      ]
    },
    {
      'imagePath': "assets/event_images/golf_competition.jpeg",
      'title': "Season 2 Golf Estate",
      'description': "",
      'location': "NSIC Ground, Okhla",
      'duration': "1d",
      'punchLine1': "Golf!",
      'punchLine2': "The latest fad in foodology, get the inside scoup.",
      'galleryImages': [
        "assets/event_images/cooking_1.jpeg",
        "assets/event_images/cooking_2.jpeg",
        "assets/event_images/cooking_3.jpeg"
      ],
      'categoryIds': [0, 3],
      'guestImages': [
        "assets/guest_images/guest1.jpg",
        "assets/guest_images/guest2.jpg",
        "assets/guest_images/guest3.jpg",
        "assets/guest_images/guest4.jpeg",
        "assets/guest_images/guest5.jpg",
        "assets/guest_images/guest6.jpg"
      ]
    },
  ];
  /////////////////////////////////////////////////////
  final List<Map<String, dynamic>> categories = [
    {
      'categoryId': 0,
      'name': 'All',
      'icon': Icons.search,
      'events': [
        {
          'imagePath': "assets/event_images/5_km_downtown_run.jpeg",
          'title': "5 Kilometer Downtown Run",
          'description': "",
          'location': "Pleasant Park",
          'duration': "3h",
          'punchLine1': "Marathon!",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'galleryImages': [],
          'categoryIds': [0, 1],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
        {
          'imagePath': "assets/event_images/granite_cooking_class.jpeg",
          'title': "Granite Cooking Class",
          'description':
              "Guest list fill up fast so be sure to apply before handto secure a spot.",
          'location': "Food Court Avenue",
          'duration': "4h",
          'punchLine1': "Granite Cooking",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'categoryIds': [0, 2],
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
        {
          'imagePath': "assets/event_images/music_concert.jpeg",
          'title': "Arijit Music Concert",
          'description': "Listen to Arijit's latest compositions.",
          'location': "D.Y. Patil Stadium, Mumbai",
          'duration': "5h",
          'punchLine1': "Music Lovers!",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ],
          'categoryIds': [0, 1]
        },
        {
          'imagePath': "assets/event_images/golf_competition.jpeg",
          'title': "Season 2 Golf Estate",
          'description': "",
          'location': "NSIC Ground, Okhla",
          'duration': "1d",
          'punchLine1': "Golf!",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'categoryIds': [0, 3],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
      ]
    },
    /////////////////////////////////////////////////////////
    {
      'categoryId': 1,
      'name': 'Music',
      'icon': Icons.music_note,
      'events': [
        {
          'imagePath': "assets/event_images/5_km_downtown_run.jpeg",
          'title': "5 Kilometer Downtown Run",
          'description': "",
          'location': "Pleasant Park",
          'duration': "3h",
          'punchLine1': "Marathon!",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'galleryImages': [],
          'categoryIds': [0, 1],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
        {
          'imagePath': "assets/event_images/music_concert.jpeg",
          'title': "Arijit Music Concert",
          'description': "Listen to Arijit's latest compositions.",
          'location': "D.Y. Patil Stadium, Mumbai",
          'duration': "5h",
          'punchLine1': "Music Lovers!",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'categoryIds': [0, 1],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
      ]
    },

    ////////////////////////////////////////
    {
      'categoryId': 2,
      'name': 'Meetup',
      'icon': Icons.location_on,
      'events': [
        {
          'imagePath': "assets/event_images/granite_cooking_class.jpeg",
          'title': "Granite Cooking Class",
          'description':
              "Guest list fill up fast so be sure to apply before handto secure a spot.",
          'location': "Food Court Avenue",
          'duration': "4h",
          'punchLine1': "Granite Cooking",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'categoryIds': [0, 2],
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg",
          ]
        },
      ]
    },
    //////////////////////////////////////////////
    {
      'categoryId': 3,
      'name': 'Golf',
      'icon': Icons.golf_course,
      'events': [
        {
          'imagePath': "assets/event_images/golf_competition.jpeg",
          'title': "Season 2 Golf Estate",
          'description': "",
          'location': "NSIC Ground, Okhla",
          'duration': "1d",
          'punchLine1': "Golf!",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'categoryIds': [0, 3],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
      ]
    },
    {
      'categoryId': 4,
      'name': 'Birthday',
      'icon': Icons.cake,
      'events': [
        {
          'imagePath': "assets/event_images/granite_cooking_class.jpeg",
          'title': "Granite Cooking Class",
          'description':
              "Guest list fill up fast so be sure to apply before handto secure a spot.",
          'location': "Food Court Avenue",
          'duration': "4h",
          'punchLine1': "Granite Cooking",
          'punchLine2': "The latest fad in foodology, get the inside scoup.",
          'categoryIds': [0, 2],
          'galleryImages': [
            "assets/event_images/cooking_1.jpeg",
            "assets/event_images/cooking_2.jpeg",
            "assets/event_images/cooking_3.jpeg"
          ],
          'guestImages': [
            "assets/guest_images/guest1.jpg",
            "assets/guest_images/guest2.jpg",
            "assets/guest_images/guest3.jpg",
            "assets/guest_images/guest4.jpeg",
            "assets/guest_images/guest5.jpg",
            "assets/guest_images/guest6.jpg"
          ]
        },
      ]
    },
  ];
  void updateSelctedCategory(int selectCategory) {
    this.selectCategory = selectCategory;
    notifyListeners();
  }

  void getEventsAfterSelectCategories({int index = 0}) {
    var result = [];
    result = categories[index]['events'];
    eventsAfterSelectCategory = result;
    notifyListeners();
  }
}
