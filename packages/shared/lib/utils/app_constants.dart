import '../../shared.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey(debugLabel: "Main Navigator");

const kFallBackCountryCode = 'JO';
const kOfferPrice = null;
const kMapZoom = 14.0;
const kGoogleMapKey = 'AIzaSyCdYABryvEDrkmaq3TqgVPDqgvbAiK_WVQ';
const String kOrderIdDocument = 'bpDRfCR3EP8ZjFWnToZX';
const kMsgWidgetId = '35667a6a7134353939323835'; // Your widgetId
const kMsgAuthToken = '457763TUgSKZeBn686bcbabP1'; // Your authToken
const kOrder = 99999;
const kAlgoliaApplicationId = "71G4O6FNG3";
const kAlgoliaApiKey = "ae2bff120346dbd5cb333b135263e1c1";
const kFoodCategoryId = "food";
const kShoppingId = "shopping";
const kAroundRadius = "12000";
const kAroundLatLng = "32.066172295198214, 36.05244362070307";
const kProductsListViewHeight = 260.0;
const kBranchWebURL = 'https://super.com';
const kBranchIdentifier = 'super/branch';
const kProviderRoleId = '234235';
const kAppName = 'super';
const kSuperAdminRoleId = '34fbd0909d4011eeb24e170bd46df764';
const kVersionsDocId = '6FpxtsNEhh7Fie394WOr';
CategoryModel get kShoppingCategory =>
    CategoryModel(id: kShoppingId, nameEn: "shopping", nameAr: "تسوق");
