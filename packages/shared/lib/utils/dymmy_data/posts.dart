import 'package:shared/enums/post_enums.dart';
import 'package:shared/models/post/post_model.dart';

import '../../network/api_service.dart';

class PostsDummy {
  final posts = [
    {
      "id": "summer_sale_banner",
      "type": "banner",
      "titleEn": "🔥 Summer Sale",
      "titleAr": "🔥 تخفيضات الصيف",
      "subtitleEn": "Up to 50% OFF + Free Shipping",
      "subtitleAr": "خصم حتى 50٪ وتوصيل مجاني",
      "image": "https://cdn.com/banners/summer.png",
      "order": 1,
      "published": true,
      "layout": {"style": "large"},
      "filters": {
        "facetFilters": ["tags:summer_sale"],
        "numericFilters": ["discountPercent >= 30"],
      },
      "indexName": "products",
    },
  ];

  void createPost() {
    // Map<String, dynamic> post = {
    //   "id": "banner_welcome_offer",
    //   "type": "banner",
    //   "title": "WELCOME TO ZALORA",
    //   "subtitle": "Up to 15% Off + FREE Shipping ON YOUR FIRST ORDER",
    //   "layout": {"aspectRatio": 3.5, "height": 90, "padding": 12, "cornerRadius": 12},
    //   "items": [
    //     {
    //       "image": "https://cdn.example.com/banners/welcome_zalora.jpg",
    //       "cta": {
    //         "title": "Shop Now",
    //         "target": "product_list",
    //         "filters": {
    //           "tags": ["first_order", "promo"],
    //         },
    //       },
    //       "imageRatio": 3.5,
    //       "cornerRadius": 12,
    //     },
    //   ],
    //   "theme": {"background": "#FCEEFF", "textColor": "#111111"},
    //   "order": 0,
    //   "published": true,
    // };
    final postModel = PostModel(
      id: kUUID,
      type: PostType.list.value,
      createdAt: kNowDate,
      indexName: "products",

      // items: [
      //   PostItemModel(
      //     imageEn:
      //         "https://firebasestorage.googleapis.com/v0/b/project-zac.firebasestorage.app/o/posts%2Fflash%20sale%20(Instagram%20Story).png?alt=media&token=a8a3ac2e-8e6e-4c7c-8692-3029a79c8514",
      //   ),
      //   // PostItemModel(
      //   //   imageEn:
      //   //       "https://firebasestorage.googleapis.com/v0/b/project-zac.firebasestorage.app/o/posts%2FPurple%20Futuristic%20Cyber%20Monday%20Sale%20Promo%20Web%20Banner.png?alt=media&token=53f22012-d6d8-4c73-aef2-84d07d82abfc",
      //   // ),
      // ],
      titleEn: "You Might Like This",
      // titleAr: "خصومات من شركائنا المميزين",
      published: true,
      order: 6,
      // layout: LayoutModel(aspectRatio: 1),
    );
    final ref = kFirebaseInstant.collection("posts").doc(postModel.id);
    postModel.id = ref.id;
    ref.set(postModel.toJson());
  }
}
