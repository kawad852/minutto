import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'lib/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @conWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get conWithGoogle;

  /// No description provided for @conWithApple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get conWithApple;

  /// No description provided for @conWithPhone.
  ///
  /// In en, this message translates to:
  /// **'Continue with Phone'**
  String get conWithPhone;

  /// No description provided for @regTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Nudoo!'**
  String get regTitle;

  /// No description provided for @regBody.
  ///
  /// In en, this message translates to:
  /// **'Organize your tasks, boost your productivity, and get things done effortlessly.\nSign up now to start managing your tasks like a pro!'**
  String get regBody;

  /// No description provided for @generalError.
  ///
  /// In en, this message translates to:
  /// **'Oops, Something went wrong !'**
  String get generalError;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Internet Connection Error'**
  String get networkError;

  /// No description provided for @generalErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Something Went Wrong'**
  String get generalErrorTitle;

  /// No description provided for @generalErrorBody.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again later or contact support.'**
  String get generalErrorBody;

  /// No description provided for @connectionErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Connection Error'**
  String get connectionErrorTitle;

  /// No description provided for @connectionErrorBody.
  ///
  /// In en, this message translates to:
  /// **'Unable to reach the server. Please check your internet connection and try again.'**
  String get connectionErrorBody;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @serverErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Unavailable'**
  String get serverErrorTitle;

  /// No description provided for @serverErrorBody.
  ///
  /// In en, this message translates to:
  /// **'We\'re currently having trouble retrieving data from the server. Please try again later.'**
  String get serverErrorBody;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get requiredField;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @authFailed.
  ///
  /// In en, this message translates to:
  /// **'Authorization Failed'**
  String get authFailed;

  /// No description provided for @guest.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get guest;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @addToBasket.
  ///
  /// In en, this message translates to:
  /// **'Add to basket'**
  String get addToBasket;

  /// No description provided for @locationServiceDisabledMsg.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled in your device'**
  String get locationServiceDisabledMsg;

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// No description provided for @basketEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Basket is Empty'**
  String get basketEmptyTitle;

  /// No description provided for @basketEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Start adding items to your basket by exploring our collection. Once you find something you like, simply tap \'Add to Basket\' to begin your shopping journey. Happy shopping!'**
  String get basketEmptyBody;

  /// No description provided for @contShipping.
  ///
  /// In en, this message translates to:
  /// **'Continue shopping'**
  String get contShipping;

  /// No description provided for @cont.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get cont;

  /// No description provided for @deliveryInfo.
  ///
  /// In en, this message translates to:
  /// **'Delivery arrives in 30-40 minutes.'**
  String get deliveryInfo;

  /// No description provided for @shoppingBasket.
  ///
  /// In en, this message translates to:
  /// **'Shopping Basket'**
  String get shoppingBasket;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;

  /// No description provided for @basket.
  ///
  /// In en, this message translates to:
  /// **'Basket'**
  String get basket;

  /// No description provided for @mealAdded.
  ///
  /// In en, this message translates to:
  /// **'Meal Added'**
  String get mealAdded;

  /// No description provided for @itemNotAvailableMsg.
  ///
  /// In en, this message translates to:
  /// **'Item no longer available'**
  String get itemNotAvailableMsg;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @itemDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Item'**
  String get itemDeleteTitle;

  /// No description provided for @itemBasketDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the item from basket ?'**
  String get itemBasketDeleteBody;

  /// No description provided for @addedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Added Successfully'**
  String get addedSuccessfully;

  /// No description provided for @successfullyUpdated.
  ///
  /// In en, this message translates to:
  /// **'Successfully Updated'**
  String get successfullyUpdated;

  /// No description provided for @deliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Delivery address'**
  String get deliveryAddress;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @contactInfo.
  ///
  /// In en, this message translates to:
  /// **'Contact info'**
  String get contactInfo;

  /// No description provided for @house.
  ///
  /// In en, this message translates to:
  /// **'House'**
  String get house;

  /// No description provided for @apartment.
  ///
  /// In en, this message translates to:
  /// **'Apartment'**
  String get apartment;

  /// No description provided for @office.
  ///
  /// In en, this message translates to:
  /// **'Office'**
  String get office;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @area.
  ///
  /// In en, this message translates to:
  /// **'Area'**
  String get area;

  /// No description provided for @streetName.
  ///
  /// In en, this message translates to:
  /// **'Street name'**
  String get streetName;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @floorNo.
  ///
  /// In en, this message translates to:
  /// **'Floor No.'**
  String get floorNo;

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'Company name'**
  String get companyName;

  /// No description provided for @buildingNo.
  ///
  /// In en, this message translates to:
  /// **'Building No.'**
  String get buildingNo;

  /// No description provided for @additionalDirections.
  ///
  /// In en, this message translates to:
  /// **'Additional directions'**
  String get additionalDirections;

  /// No description provided for @apartmentNo.
  ///
  /// In en, this message translates to:
  /// **'Apartment No.'**
  String get apartmentNo;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @countrySearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for the country name or dial code...'**
  String get countrySearchHint;

  /// No description provided for @locationAccess.
  ///
  /// In en, this message translates to:
  /// **'Location Access'**
  String get locationAccess;

  /// No description provided for @locationAccessBody.
  ///
  /// In en, this message translates to:
  /// **'Allow location access so that we can display the stores closest to you'**
  String get locationAccessBody;

  /// No description provided for @allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// No description provided for @deleteAddressTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Address'**
  String get deleteAddressTitle;

  /// No description provided for @deleteAddressBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the address ?'**
  String get deleteAddressBody;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add New Address'**
  String get addNewAddress;

  /// No description provided for @addressesEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No Addresses Added Yet'**
  String get addressesEmptyTitle;

  /// No description provided for @addressesEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t added any delivery addresses yet. Tap the button below to add a new address.'**
  String get addressesEmptyBody;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @deliveryAddresses.
  ///
  /// In en, this message translates to:
  /// **'Delivery Addresses'**
  String get deliveryAddresses;

  /// No description provided for @placesSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for a place..'**
  String get placesSearchHint;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccountTitle;

  /// No description provided for @deleteAccountBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account ?\nAll of your data will be erased.'**
  String get deleteAccountBody;

  /// No description provided for @deleteAccountSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your account has been deleted successfully.'**
  String get deleteAccountSuccess;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @promoCodeInfo.
  ///
  /// In en, this message translates to:
  /// **'Please enter your promo code to get discount'**
  String get promoCodeInfo;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @promoCode.
  ///
  /// In en, this message translates to:
  /// **'Promo Code'**
  String get promoCode;

  /// No description provided for @applyPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Apply Promo Code'**
  String get applyPromoCode;

  /// No description provided for @expiredPromoCodeMsg.
  ///
  /// In en, this message translates to:
  /// **'Promo code expired. Stay tuned for fresh offers coming soon!'**
  String get expiredPromoCodeMsg;

  /// No description provided for @invalidPromoCodeMsg.
  ///
  /// In en, this message translates to:
  /// **'Hm, seems like something\'s off with that code. Double-check for typos and try again.'**
  String get invalidPromoCodeMsg;

  /// No description provided for @successPromoCodeMsg.
  ///
  /// In en, this message translates to:
  /// **'Congrats! Your promo code is applied. Enjoy your savings!'**
  String get successPromoCodeMsg;

  /// No description provided for @enterPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Promo Code'**
  String get enterPromoCode;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// No description provided for @orderSummery.
  ///
  /// In en, this message translates to:
  /// **'Order Summery'**
  String get orderSummery;

  /// No description provided for @deliveryFee.
  ///
  /// In en, this message translates to:
  /// **'Delivery Fee'**
  String get deliveryFee;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @orderTotal.
  ///
  /// In en, this message translates to:
  /// **'Order Total'**
  String get orderTotal;

  /// No description provided for @basketTotal.
  ///
  /// In en, this message translates to:
  /// **'Basket Total'**
  String get basketTotal;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @reviewQuestion.
  ///
  /// In en, this message translates to:
  /// **'How was your order from {appName} ?'**
  String reviewQuestion(Object appName);

  /// No description provided for @reviewSubmittedMsg.
  ///
  /// In en, this message translates to:
  /// **'Your review has been submitted successfully'**
  String get reviewSubmittedMsg;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'iBear'**
  String get appName;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @pickUp.
  ///
  /// In en, this message translates to:
  /// **'Pick Up'**
  String get pickUp;

  /// No description provided for @minOrderMsg.
  ///
  /// In en, this message translates to:
  /// **'Minimum basket total must be more than {value}'**
  String minOrderMsg(Object value);

  /// No description provided for @storeClosedMsg.
  ///
  /// In en, this message translates to:
  /// **'We are currently closed. Please check back during our operating hours from {start} to {end}.'**
  String storeClosedMsg(Object end, Object start);

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @emptyNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up!'**
  String get emptyNotificationsTitle;

  /// No description provided for @emptyNotificationsBody.
  ///
  /// In en, this message translates to:
  /// **'We haven\'t sent any notifications yet, but stay tuned!'**
  String get emptyNotificationsBody;

  /// No description provided for @emptyOrdersTitle.
  ///
  /// In en, this message translates to:
  /// **'No Orders Yet!'**
  String get emptyOrdersTitle;

  /// No description provided for @emptyOrdersBody.
  ///
  /// In en, this message translates to:
  /// **'Browse our selection and place your first order.'**
  String get emptyOrdersBody;

  /// No description provided for @statusPlaced.
  ///
  /// In en, this message translates to:
  /// **'Placed'**
  String get statusPlaced;

  /// No description provided for @statusPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing'**
  String get statusPreparing;

  /// No description provided for @statusOutForDelivery.
  ///
  /// In en, this message translates to:
  /// **'Out For Delivery'**
  String get statusOutForDelivery;

  /// No description provided for @statusDelivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get statusDelivered;

  /// No description provided for @statusCanceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get statusCanceled;

  /// No description provided for @statusRefunded.
  ///
  /// In en, this message translates to:
  /// **'Refunded'**
  String get statusRefunded;

  /// No description provided for @statusRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get statusRejected;

  /// No description provided for @statusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get statusCompleted;

  /// No description provided for @readyForPickup.
  ///
  /// In en, this message translates to:
  /// **'Ready For Pickup'**
  String get readyForPickup;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order details'**
  String get orderDetails;

  /// No description provided for @orderStatus.
  ///
  /// In en, this message translates to:
  /// **'Order status'**
  String get orderStatus;

  /// No description provided for @outOfStockTitle.
  ///
  /// In en, this message translates to:
  /// **'Out Of Stock'**
  String get outOfStockTitle;

  /// No description provided for @outOfStockBody.
  ///
  /// In en, this message translates to:
  /// **'This item is no longer available. Please remove it from your basket or check back later.'**
  String get outOfStockBody;

  /// No description provided for @stockAvailabilityTitle.
  ///
  /// In en, this message translates to:
  /// **'Oops! Limited Stock Available'**
  String get stockAvailabilityTitle;

  /// No description provided for @stockAvailabilitySubTitle.
  ///
  /// In en, this message translates to:
  /// **'There are only {stockQuantity} left in stock. Please update your basket to proceed.'**
  String stockAvailabilitySubTitle(Object stockQuantity);

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get termsOfUse;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @whatAreYouLookingForHint.
  ///
  /// In en, this message translates to:
  /// **'What are you looking for?'**
  String get whatAreYouLookingForHint;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @food.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get food;

  /// No description provided for @fixBasketIssueMsg.
  ///
  /// In en, this message translates to:
  /// **'Please fix the issues in your basket before continuing.'**
  String get fixBasketIssueMsg;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @priceLowToHigh.
  ///
  /// In en, this message translates to:
  /// **'Price (Low > High)'**
  String get priceLowToHigh;

  /// No description provided for @priceHighToLow.
  ///
  /// In en, this message translates to:
  /// **'Price (High > Low)'**
  String get priceHighToLow;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get sortBy;

  /// No description provided for @moreForYou.
  ///
  /// In en, this message translates to:
  /// **'More For You'**
  String get moreForYou;

  /// No description provided for @coupon.
  ///
  /// In en, this message translates to:
  /// **'Coupon'**
  String get coupon;

  /// No description provided for @rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get rewards;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get points;

  /// No description provided for @rewardsInfoText.
  ///
  /// In en, this message translates to:
  /// **'Reward points are earned from your purchases and can be redeemed for discounts when buying items from the app.'**
  String get rewardsInfoText;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @topRestaurantsNearYou.
  ///
  /// In en, this message translates to:
  /// **'Top rated restaurants near you'**
  String get topRestaurantsNearYou;

  /// No description provided for @redeemAndSave.
  ///
  /// In en, this message translates to:
  /// **'Redeem And Save'**
  String get redeemAndSave;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @khaled.
  ///
  /// In en, this message translates to:
  /// **'Khaled'**
  String get khaled;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @invalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid credentials'**
  String get invalidCredentials;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @invalidPhoneNum.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNum;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get second;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @displayName.
  ///
  /// In en, this message translates to:
  /// **'Display name'**
  String get displayName;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @phoneNum.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNum;

  /// No description provided for @emptyOrdersByStatus.
  ///
  /// In en, this message translates to:
  /// **'No Orders are {status} yet!'**
  String emptyOrdersByStatus(Object status);

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @newOrder.
  ///
  /// In en, this message translates to:
  /// **'New order'**
  String get newOrder;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get reject;

  /// No description provided for @buildingType.
  ///
  /// In en, this message translates to:
  /// **'Building Type'**
  String get buildingType;

  /// No description provided for @addressDetails.
  ///
  /// In en, this message translates to:
  /// **'Address Details'**
  String get addressDetails;

  /// No description provided for @ready.
  ///
  /// In en, this message translates to:
  /// **'Ready'**
  String get ready;

  /// No description provided for @noAvailableRidersMsg.
  ///
  /// In en, this message translates to:
  /// **'No riders are available at this moment.'**
  String get noAvailableRidersMsg;

  /// No description provided for @changeRider.
  ///
  /// In en, this message translates to:
  /// **'Change rider'**
  String get changeRider;

  /// No description provided for @rider.
  ///
  /// In en, this message translates to:
  /// **'Rider'**
  String get rider;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @selectRider.
  ///
  /// In en, this message translates to:
  /// **'Select A Rider'**
  String get selectRider;

  /// No description provided for @makeReady.
  ///
  /// In en, this message translates to:
  /// **'Make Ready'**
  String get makeReady;

  /// No description provided for @acceptAndPrint.
  ///
  /// In en, this message translates to:
  /// **'Accept And Print'**
  String get acceptAndPrint;

  /// No description provided for @cancelOrder.
  ///
  /// In en, this message translates to:
  /// **'Cancel Order'**
  String get cancelOrder;

  /// No description provided for @reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reason;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @extraNote.
  ///
  /// In en, this message translates to:
  /// **'Extra Note'**
  String get extraNote;

  /// No description provided for @canceledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Canceled Successfully'**
  String get canceledSuccess;

  /// No description provided for @unavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable Item(s).'**
  String get unavailable;

  /// No description provided for @orderTakingTooLong.
  ///
  /// In en, this message translates to:
  /// **'Restaurant is taking too long to prepare the order.'**
  String get orderTakingTooLong;

  /// No description provided for @lackOfIngredients.
  ///
  /// In en, this message translates to:
  /// **'Lack of ingredients.'**
  String get lackOfIngredients;

  /// No description provided for @customerRequest.
  ///
  /// In en, this message translates to:
  /// **'Customer request.'**
  String get customerRequest;

  /// No description provided for @technicalIssue.
  ///
  /// In en, this message translates to:
  /// **'Technical issues.'**
  String get technicalIssue;

  /// No description provided for @highOrderVolume.
  ///
  /// In en, this message translates to:
  /// **'Too many orders at the same time.'**
  String get highOrderVolume;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @branch.
  ///
  /// In en, this message translates to:
  /// **'Branch'**
  String get branch;

  /// No description provided for @orderConfirmedTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Order'**
  String get orderConfirmedTitle;

  /// No description provided for @orderConfirmedBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to confirm this order ?'**
  String get orderConfirmedBody;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'completed'**
  String get completed;

  /// No description provided for @canceledOrders.
  ///
  /// In en, this message translates to:
  /// **'Canceled Orders'**
  String get canceledOrders;

  /// No description provided for @completedOrders.
  ///
  /// In en, this message translates to:
  /// **'Completed Orders'**
  String get completedOrders;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No Results'**
  String get noResults;

  /// No description provided for @createOrder.
  ///
  /// In en, this message translates to:
  /// **'Create Order'**
  String get createOrder;

  /// No description provided for @preparingDelivery.
  ///
  /// In en, this message translates to:
  /// **'Preparing Delivery'**
  String get preparingDelivery;

  /// No description provided for @preparingPickup.
  ///
  /// In en, this message translates to:
  /// **'Preparing Pickup'**
  String get preparingPickup;

  /// No description provided for @outForDeliveryOrders.
  ///
  /// In en, this message translates to:
  /// **'Out for delivery orders'**
  String get outForDeliveryOrders;

  /// No description provided for @changeToPreparing.
  ///
  /// In en, this message translates to:
  /// **'Change to Preparing'**
  String get changeToPreparing;

  /// No description provided for @editStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Status Change'**
  String get editStatusTitle;

  /// No description provided for @editStatusBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to change the order status to \'Preparing\'?'**
  String get editStatusBody;

  /// No description provided for @deliveryOrders.
  ///
  /// In en, this message translates to:
  /// **'Delivery Orders'**
  String get deliveryOrders;

  /// No description provided for @pickupOrders.
  ///
  /// In en, this message translates to:
  /// **'Pickup Orders'**
  String get pickupOrders;

  /// No description provided for @addedToBasketMsg.
  ///
  /// In en, this message translates to:
  /// **'Product added to basket'**
  String get addedToBasketMsg;

  /// No description provided for @noteHint.
  ///
  /// In en, this message translates to:
  /// **'Note..'**
  String get noteHint;

  /// No description provided for @customerInfo.
  ///
  /// In en, this message translates to:
  /// **'Customer Info'**
  String get customerInfo;

  /// No description provided for @totalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get totalPrice;

  /// No description provided for @credit.
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get credit;

  /// No description provided for @contOrder.
  ///
  /// In en, this message translates to:
  /// **'Continue Current Order'**
  String get contOrder;

  /// No description provided for @determineOrderType.
  ///
  /// In en, this message translates to:
  /// **'Must determine whether the order is delivery or pickup.'**
  String get determineOrderType;

  /// No description provided for @determineCustomerArea.
  ///
  /// In en, this message translates to:
  /// **'Must determine customer address'**
  String get determineCustomerArea;

  /// No description provided for @determineDeliveryFee.
  ///
  /// In en, this message translates to:
  /// **'Determine delivery fee'**
  String get determineDeliveryFee;

  /// No description provided for @orderPlacedMsg.
  ///
  /// In en, this message translates to:
  /// **'Order Placed Successfully'**
  String get orderPlacedMsg;

  /// No description provided for @searchCountryOrCode.
  ///
  /// In en, this message translates to:
  /// **'Search for the country name or dial code'**
  String get searchCountryOrCode;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @leavingPageWillRemoveBasketMsg.
  ///
  /// In en, this message translates to:
  /// **'Leaving the page will delete your items from the basket. continue anyway ?'**
  String get leavingPageWillRemoveBasketMsg;

  /// No description provided for @non.
  ///
  /// In en, this message translates to:
  /// **'Non'**
  String get non;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Must be at least 6 characters'**
  String get passwordTooShort;

  /// No description provided for @paymentSummary.
  ///
  /// In en, this message translates to:
  /// **'Payment Summary'**
  String get paymentSummary;

  /// No description provided for @card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get card;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @ads.
  ///
  /// In en, this message translates to:
  /// **'Ads'**
  String get ads;

  /// No description provided for @shop.
  ///
  /// In en, this message translates to:
  /// **'Shop'**
  String get shop;

  /// No description provided for @itemDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the item from favorites?'**
  String get itemDeleteBody;

  /// No description provided for @pointsDiscountLabel.
  ///
  /// In en, this message translates to:
  /// **'You have earned {points} points, redeem to get {value} {currency} discount.'**
  String pointsDiscountLabel(Object currency, Object points, Object value);

  /// No description provided for @redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get redeem;

  /// No description provided for @rewardsDiscount.
  ///
  /// In en, this message translates to:
  /// **'Rewards Discount'**
  String get rewardsDiscount;

  /// No description provided for @promoCodeDiscount.
  ///
  /// In en, this message translates to:
  /// **'Promo Code Discount'**
  String get promoCodeDiscount;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @locationAccessMsg.
  ///
  /// In en, this message translates to:
  /// **'Location access is required to show nearby stores, restaurants, and local offers. Please enable location permissions in your settings to enjoy the full experience.'**
  String get locationAccessMsg;

  /// No description provided for @deliverTo.
  ///
  /// In en, this message translates to:
  /// **'Deliver To'**
  String get deliverTo;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone Number'**
  String get enterPhoneNumber;

  /// No description provided for @invalidOTP.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP'**
  String get invalidOTP;

  /// No description provided for @enterPhoneCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Verification Code'**
  String get enterPhoneCode;

  /// No description provided for @inputPhoneTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Phone Number'**
  String get inputPhoneTitle;

  /// No description provided for @inputPhoneBody.
  ///
  /// In en, this message translates to:
  /// **'To proceed, please enter your phone number below. We will send a verification code to this number for authentication.'**
  String get inputPhoneBody;

  /// No description provided for @verifyPhoneTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Phone'**
  String get verifyPhoneTitle;

  /// No description provided for @verifyPhoneBody.
  ///
  /// In en, this message translates to:
  /// **'Enter the PIN code sent to your phone number to complete the verification process.'**
  String get verifyPhoneBody;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @admins.
  ///
  /// In en, this message translates to:
  /// **'Admins'**
  String get admins;

  /// No description provided for @policies.
  ///
  /// In en, this message translates to:
  /// **'Polices'**
  String get policies;

  /// No description provided for @noAccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Access denied'**
  String get noAccessTitle;

  /// No description provided for @noAccessBody.
  ///
  /// In en, this message translates to:
  /// **'You do not have permission to view this page. Please contact the administrator.'**
  String get noAccessBody;

  /// No description provided for @titleEn.
  ///
  /// In en, this message translates to:
  /// **'Title (en)'**
  String get titleEn;

  /// No description provided for @titleAr.
  ///
  /// In en, this message translates to:
  /// **'Title (ar)'**
  String get titleAr;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get role;

  /// No description provided for @roles.
  ///
  /// In en, this message translates to:
  /// **'Roles'**
  String get roles;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @manage.
  ///
  /// In en, this message translates to:
  /// **'Manage'**
  String get manage;

  /// No description provided for @nameEn.
  ///
  /// In en, this message translates to:
  /// **'Name (en)'**
  String get nameEn;

  /// No description provided for @nameAr.
  ///
  /// In en, this message translates to:
  /// **'Name (ar)'**
  String get nameAr;

  /// No description provided for @permissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissions;

  /// No description provided for @initialLocation.
  ///
  /// In en, this message translates to:
  /// **'Initial Location'**
  String get initialLocation;

  /// No description provided for @configure.
  ///
  /// In en, this message translates to:
  /// **'Configure'**
  String get configure;

  /// No description provided for @orderSentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Order sent successfully'**
  String get orderSentSuccessfully;

  /// No description provided for @startNewBasket.
  ///
  /// In en, this message translates to:
  /// **'Start new basket'**
  String get startNewBasket;

  /// No description provided for @startNewBasketTitle.
  ///
  /// In en, this message translates to:
  /// **'Start a New Basket?'**
  String get startNewBasketTitle;

  /// No description provided for @startNewBasketBody.
  ///
  /// In en, this message translates to:
  /// **'Your current basket contains items from a different store or category. To add this item, you\'ll need to start a new basket.'**
  String get startNewBasketBody;

  /// No description provided for @pointsEarned.
  ///
  /// In en, this message translates to:
  /// **'Points Earned!'**
  String get pointsEarned;

  /// No description provided for @pointsEarnedText.
  ///
  /// In en, this message translates to:
  /// **'Redeem them on your faves to save extra on your next order.'**
  String get pointsEarnedText;

  /// No description provided for @estimatedArrival.
  ///
  /// In en, this message translates to:
  /// **'Estimated Arrival'**
  String get estimatedArrival;

  /// No description provided for @driverOrderStatement.
  ///
  /// In en, this message translates to:
  /// **'At {storeName} and ready to grab your order.'**
  String driverOrderStatement(Object storeName);

  /// No description provided for @last7DaysPerformance.
  ///
  /// In en, this message translates to:
  /// **'Last 7 Days Performance'**
  String get last7DaysPerformance;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @thisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get thisWeek;

  /// No description provided for @lastWeek.
  ///
  /// In en, this message translates to:
  /// **'Last Week'**
  String get lastWeek;

  /// No description provided for @last7Days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 Days'**
  String get last7Days;

  /// No description provided for @last30Days.
  ///
  /// In en, this message translates to:
  /// **'Last 30 Days'**
  String get last30Days;

  /// No description provided for @last90Days.
  ///
  /// In en, this message translates to:
  /// **'Last 90 Days'**
  String get last90Days;

  /// No description provided for @last12Months.
  ///
  /// In en, this message translates to:
  /// **'Last 12 Months'**
  String get last12Months;

  /// No description provided for @thisYear.
  ///
  /// In en, this message translates to:
  /// **'This Year'**
  String get thisYear;

  /// No description provided for @insights.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get insights;

  /// No description provided for @views.
  ///
  /// In en, this message translates to:
  /// **'Views'**
  String get views;

  /// No description provided for @delivering.
  ///
  /// In en, this message translates to:
  /// **'Delivering'**
  String get delivering;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get rate;

  /// No description provided for @disappointing.
  ///
  /// In en, this message translates to:
  /// **'Disappointing'**
  String get disappointing;

  /// No description provided for @notSoGood.
  ///
  /// In en, this message translates to:
  /// **'Not so good'**
  String get notSoGood;

  /// No description provided for @alright.
  ///
  /// In en, this message translates to:
  /// **'Alright'**
  String get alright;

  /// No description provided for @prettyGood.
  ///
  /// In en, this message translates to:
  /// **'Pretty good'**
  String get prettyGood;

  /// No description provided for @awesome.
  ///
  /// In en, this message translates to:
  /// **'Awesome'**
  String get awesome;

  /// No description provided for @tellUsALittleMore.
  ///
  /// In en, this message translates to:
  /// **'Tell us a little more'**
  String get tellUsALittleMore;

  /// No description provided for @reviewHint.
  ///
  /// In en, this message translates to:
  /// **'Write a review to help others know what\'s good'**
  String get reviewHint;

  /// No description provided for @starRatingMissedMsg.
  ///
  /// In en, this message translates to:
  /// **'Please select a star rating before submitting your review.'**
  String get starRatingMissedMsg;

  /// No description provided for @rewardPoints.
  ///
  /// In en, this message translates to:
  /// **'Reward Points'**
  String get rewardPoints;

  /// No description provided for @build.
  ///
  /// In en, this message translates to:
  /// **'Build'**
  String get build;

  /// No description provided for @engage.
  ///
  /// In en, this message translates to:
  /// **'Engage'**
  String get engage;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @basePrice.
  ///
  /// In en, this message translates to:
  /// **'Base Price'**
  String get basePrice;

  /// No description provided for @discountPrice.
  ///
  /// In en, this message translates to:
  /// **'Discount Price'**
  String get discountPrice;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @thumbnail.
  ///
  /// In en, this message translates to:
  /// **'Thumbnail'**
  String get thumbnail;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// No description provided for @createdAt.
  ///
  /// In en, this message translates to:
  /// **'Created At'**
  String get createdAt;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @store.
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get store;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @newKey.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newKey;

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'Trending'**
  String get trending;

  /// No description provided for @bestSeller.
  ///
  /// In en, this message translates to:
  /// **'Best Seller'**
  String get bestSeller;

  /// No description provided for @helloAndWelcome.
  ///
  /// In en, this message translates to:
  /// **'Hello and welcome'**
  String get helloAndWelcome;

  /// No description provided for @dearUser.
  ///
  /// In en, this message translates to:
  /// **'Dear user'**
  String get dearUser;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'If you have an account, log in now.'**
  String get haveAccount;

  /// No description provided for @swipeToCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Swipe up to create an account'**
  String get swipeToCreateAccount;

  /// No description provided for @swipDownToLogIn.
  ///
  /// In en, this message translates to:
  /// **'Swipe down to log in'**
  String get swipDownToLogIn;

  /// No description provided for @wantCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Do you want to create an account?'**
  String get wantCreateAccount;

  /// No description provided for @followYourInfo.
  ///
  /// In en, this message translates to:
  /// **'To create an account, please fill in the following information'**
  String get followYourInfo;

  /// No description provided for @companyCodeWorkFor.
  ///
  /// In en, this message translates to:
  /// **'The company code you work for'**
  String get companyCodeWorkFor;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @verifyPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Verify phone number'**
  String get verifyPhoneNumber;

  /// No description provided for @sendVerficationCode.
  ///
  /// In en, this message translates to:
  /// **'Please send the verification code sent to your phone number.'**
  String get sendVerficationCode;

  /// No description provided for @verificationCode.
  ///
  /// In en, this message translates to:
  /// **'Verification code'**
  String get verificationCode;

  /// No description provided for @resendCodeAfter.
  ///
  /// In en, this message translates to:
  /// **'Resend code after '**
  String get resendCodeAfter;

  /// No description provided for @confirmAccount.
  ///
  /// In en, this message translates to:
  /// **'Confirm Account'**
  String get confirmAccount;

  /// No description provided for @accountSuccessfullyCreated.
  ///
  /// In en, this message translates to:
  /// **'Congratulations, your account has been successfully created.'**
  String get accountSuccessfullyCreated;

  /// No description provided for @waitUntilApproveAccount.
  ///
  /// In en, this message translates to:
  /// **'Please wait until your account is approved by your company administrator, then you can log in to your account.'**
  String get waitUntilApproveAccount;

  /// No description provided for @goToLogIn.
  ///
  /// In en, this message translates to:
  /// **'Go to log in'**
  String get goToLogIn;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good morning !'**
  String get goodMorning;

  /// No description provided for @principleLazy.
  ///
  /// In en, this message translates to:
  /// **'Don\'t put off until tomorrow what you can do today, but put it off until the day after tomorrow; that\'s the principle of the lazy.'**
  String get principleLazy;

  /// No description provided for @checkInOut.
  ///
  /// In en, this message translates to:
  /// **'Check-in/out'**
  String get checkInOut;

  /// No description provided for @currentTime.
  ///
  /// In en, this message translates to:
  /// **'Current time: '**
  String get currentTime;

  /// No description provided for @submitRequest.
  ///
  /// In en, this message translates to:
  /// **'Submit request'**
  String get submitRequest;

  /// No description provided for @leaving.
  ///
  /// In en, this message translates to:
  /// **'Leaving'**
  String get leaving;

  /// No description provided for @leaveAbsence.
  ///
  /// In en, this message translates to:
  /// **'Leave/absence'**
  String get leaveAbsence;

  /// No description provided for @attendanceAndDepartureReport.
  ///
  /// In en, this message translates to:
  /// **'Attendance and departure report'**
  String get attendanceAndDepartureReport;

  /// No description provided for @vacations.
  ///
  /// In en, this message translates to:
  /// **'Vacations'**
  String get vacations;

  /// No description provided for @departures.
  ///
  /// In en, this message translates to:
  /// **'Departures'**
  String get departures;

  /// No description provided for @salaries.
  ///
  /// In en, this message translates to:
  /// **'Salaries'**
  String get salaries;

  /// No description provided for @alarms.
  ///
  /// In en, this message translates to:
  /// **'Alarms'**
  String get alarms;

  /// No description provided for @advances.
  ///
  /// In en, this message translates to:
  /// **'Debts'**
  String get advances;

  /// No description provided for @incentivesRequests.
  ///
  /// In en, this message translates to:
  /// **'Incentives/requests'**
  String get incentivesRequests;

  /// No description provided for @overtime.
  ///
  /// In en, this message translates to:
  /// **'Overtime'**
  String get overtime;

  /// No description provided for @workBreak.
  ///
  /// In en, this message translates to:
  /// **'Work break'**
  String get workBreak;

  /// No description provided for @inMonth.
  ///
  /// In en, this message translates to:
  /// **'In a month'**
  String get inMonth;

  /// No description provided for @chooseVerfiyMethod.
  ///
  /// In en, this message translates to:
  /// **'Choose the verification method that suits you'**
  String get chooseVerfiyMethod;

  /// No description provided for @confirmLocation.
  ///
  /// In en, this message translates to:
  /// **'Confirm location'**
  String get confirmLocation;

  /// No description provided for @scanQRCode.
  ///
  /// In en, this message translates to:
  /// **'Scan QR code'**
  String get scanQRCode;

  /// No description provided for @mustPersentAtWork.
  ///
  /// In en, this message translates to:
  /// **'You must be present at the work site.'**
  String get mustPersentAtWork;

  /// No description provided for @verifying.
  ///
  /// In en, this message translates to:
  /// **'Verifying'**
  String get verifying;

  /// No description provided for @yourLocationVerified.
  ///
  /// In en, this message translates to:
  /// **'Your location is being verified to record your arrival time to work, please wait.'**
  String get yourLocationVerified;

  /// No description provided for @applicationSettings.
  ///
  /// In en, this message translates to:
  /// **'Application settings'**
  String get applicationSettings;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// No description provided for @nightMode.
  ///
  /// In en, this message translates to:
  /// **'Night mode'**
  String get nightMode;

  /// No description provided for @aboutTheCompany.
  ///
  /// In en, this message translates to:
  /// **'About the company'**
  String get aboutTheCompany;

  /// No description provided for @bylaws.
  ///
  /// In en, this message translates to:
  /// **'Bylaws'**
  String get bylaws;

  /// No description provided for @leaveDepartureSystem.
  ///
  /// In en, this message translates to:
  /// **'Leave and departure system'**
  String get leaveDepartureSystem;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @aboutTheApplication.
  ///
  /// In en, this message translates to:
  /// **'About the application'**
  String get aboutTheApplication;

  /// No description provided for @whoAreWe.
  ///
  /// In en, this message translates to:
  /// **'Who are we?'**
  String get whoAreWe;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @employeeData.
  ///
  /// In en, this message translates to:
  /// **'Employee data'**
  String get employeeData;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Job title'**
  String get jobTitle;

  /// No description provided for @basicSalary.
  ///
  /// In en, this message translates to:
  /// **'Basic salary'**
  String get basicSalary;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBirth;

  /// No description provided for @dateStartWork.
  ///
  /// In en, this message translates to:
  /// **'Date of start of work'**
  String get dateStartWork;

  /// No description provided for @contractDuration.
  ///
  /// In en, this message translates to:
  /// **'Contract duration'**
  String get contractDuration;

  /// No description provided for @expirationDateContract.
  ///
  /// In en, this message translates to:
  /// **'Expiration date of the employment contract'**
  String get expirationDateContract;

  /// No description provided for @nameBankSalary.
  ///
  /// In en, this message translates to:
  /// **'Name of the bank designated for receiving the salary'**
  String get nameBankSalary;

  /// No description provided for @bankBranch.
  ///
  /// In en, this message translates to:
  /// **'Bank branch'**
  String get bankBranch;

  /// No description provided for @accountNumberIBAN.
  ///
  /// In en, this message translates to:
  /// **'Account number / IBAN'**
  String get accountNumberIBAN;

  /// No description provided for @saveModifications.
  ///
  /// In en, this message translates to:
  /// **'Save modifications'**
  String get saveModifications;

  /// No description provided for @overtimeRequests.
  ///
  /// In en, this message translates to:
  /// **'Overtime requests'**
  String get overtimeRequests;

  /// No description provided for @overtimeRequest.
  ///
  /// In en, this message translates to:
  /// **'Overtime request'**
  String get overtimeRequest;

  /// No description provided for @overtimeHistory.
  ///
  /// In en, this message translates to:
  /// **'Overtime history'**
  String get overtimeHistory;

  /// No description provided for @fromHour.
  ///
  /// In en, this message translates to:
  /// **'From hour'**
  String get fromHour;

  /// No description provided for @toHour.
  ///
  /// In en, this message translates to:
  /// **'To hour'**
  String get toHour;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @attachDocument.
  ///
  /// In en, this message translates to:
  /// **'Attach a document'**
  String get attachDocument;

  /// No description provided for @medicalCondition.
  ///
  /// In en, this message translates to:
  /// **'If it is a medical condition, please add the medical report.'**
  String get medicalCondition;

  /// No description provided for @attachFile.
  ///
  /// In en, this message translates to:
  /// **'Attach a file'**
  String get attachFile;

  /// No description provided for @workHistory.
  ///
  /// In en, this message translates to:
  /// **'Work history'**
  String get workHistory;

  /// No description provided for @dateAndTimeRequest.
  ///
  /// In en, this message translates to:
  /// **'Date and time of request'**
  String get dateAndTimeRequest;

  /// No description provided for @attachedDocuments.
  ///
  /// In en, this message translates to:
  /// **'Attached documents'**
  String get attachedDocuments;

  /// No description provided for @officialReplied.
  ///
  /// In en, this message translates to:
  /// **'Official replied'**
  String get officialReplied;

  /// No description provided for @officialNotes.
  ///
  /// In en, this message translates to:
  /// **'Official\'s notes'**
  String get officialNotes;

  /// No description provided for @vacationRequest.
  ///
  /// In en, this message translates to:
  /// **'Vacation request'**
  String get vacationRequest;

  /// No description provided for @requestType.
  ///
  /// In en, this message translates to:
  /// **'Request type'**
  String get requestType;

  /// No description provided for @fromDate.
  ///
  /// In en, this message translates to:
  /// **'From date'**
  String get fromDate;

  /// No description provided for @toDate.
  ///
  /// In en, this message translates to:
  /// **'To date'**
  String get toDate;

  /// No description provided for @leaveRequest.
  ///
  /// In en, this message translates to:
  /// **'Leave request'**
  String get leaveRequest;

  /// No description provided for @leaveDate.
  ///
  /// In en, this message translates to:
  /// **'Leave date'**
  String get leaveDate;

  /// No description provided for @myLeave.
  ///
  /// In en, this message translates to:
  /// **'My leave'**
  String get myLeave;

  /// No description provided for @myVacation.
  ///
  /// In en, this message translates to:
  /// **'My Vacation'**
  String get myVacation;

  /// No description provided for @debtRequest.
  ///
  /// In en, this message translates to:
  /// **'Debt request'**
  String get debtRequest;

  /// No description provided for @debtValue.
  ///
  /// In en, this message translates to:
  /// **'Debt value'**
  String get debtValue;

  /// No description provided for @orderDate.
  ///
  /// In en, this message translates to:
  /// **'Order date'**
  String get orderDate;

  /// No description provided for @debtRequests.
  ///
  /// In en, this message translates to:
  /// **'Debt requests'**
  String get debtRequests;

  /// No description provided for @requests.
  ///
  /// In en, this message translates to:
  /// **'Requests'**
  String get requests;

  /// No description provided for @ceiling.
  ///
  /// In en, this message translates to:
  /// **'Ceiling'**
  String get ceiling;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @fromTheBasicSalary.
  ///
  /// In en, this message translates to:
  /// **'From the basic salary'**
  String get fromTheBasicSalary;

  /// No description provided for @ordersRecord.
  ///
  /// In en, this message translates to:
  /// **'Orders record'**
  String get ordersRecord;

  /// No description provided for @valuee.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get valuee;

  /// No description provided for @attachDoucOrPdf.
  ///
  /// In en, this message translates to:
  /// **'You can attach a PDF document or an image.'**
  String get attachDoucOrPdf;

  /// No description provided for @alarmType.
  ///
  /// In en, this message translates to:
  /// **'Alarm type'**
  String get alarmType;

  /// No description provided for @alarmDate.
  ///
  /// In en, this message translates to:
  /// **'Alarm date'**
  String get alarmDate;

  /// No description provided for @alarmPenalty.
  ///
  /// In en, this message translates to:
  /// **'Alarm penalty'**
  String get alarmPenalty;

  /// No description provided for @alarmText.
  ///
  /// In en, this message translates to:
  /// **'Alarm text'**
  String get alarmText;

  /// No description provided for @requestForExpenseAllowance.
  ///
  /// In en, this message translates to:
  /// **'Request for expense allowance'**
  String get requestForExpenseAllowance;

  /// No description provided for @incentives.
  ///
  /// In en, this message translates to:
  /// **'Incentives'**
  String get incentives;

  /// No description provided for @typeIncentive.
  ///
  /// In en, this message translates to:
  /// **'Type incentive'**
  String get typeIncentive;

  /// No description provided for @incentiveDate.
  ///
  /// In en, this message translates to:
  /// **'Incentive date'**
  String get incentiveDate;

  /// No description provided for @incentive.
  ///
  /// In en, this message translates to:
  /// **'Incentive'**
  String get incentive;

  /// No description provided for @dateRegistrationIncentive.
  ///
  /// In en, this message translates to:
  /// **'Date registration incentive'**
  String get dateRegistrationIncentive;

  /// No description provided for @incentiveText.
  ///
  /// In en, this message translates to:
  /// **'Incentive text'**
  String get incentiveText;

  /// No description provided for @typeExpenseCompensated.
  ///
  /// In en, this message translates to:
  /// **'Type of expense to be compensated'**
  String get typeExpenseCompensated;

  /// No description provided for @expenseAllowanceDate.
  ///
  /// In en, this message translates to:
  /// **'Expense allowance date'**
  String get expenseAllowanceDate;

  /// No description provided for @allowanceValue.
  ///
  /// In en, this message translates to:
  /// **'Allowance value'**
  String get allowanceValue;

  /// No description provided for @salariesYear.
  ///
  /// In en, this message translates to:
  /// **'Salaries for the year'**
  String get salariesYear;

  /// No description provided for @salaryReport.
  ///
  /// In en, this message translates to:
  /// **'Salary report'**
  String get salaryReport;

  /// No description provided for @incentivesAndRewards.
  ///
  /// In en, this message translates to:
  /// **'Incentives and rewards'**
  String get incentivesAndRewards;

  /// No description provided for @fuelAllowance.
  ///
  /// In en, this message translates to:
  /// **'Fuel allowance'**
  String get fuelAllowance;

  /// No description provided for @absenceDiscount.
  ///
  /// In en, this message translates to:
  /// **'Absence discount'**
  String get absenceDiscount;

  /// No description provided for @delayDiscount.
  ///
  /// In en, this message translates to:
  /// **'Delay discount'**
  String get delayDiscount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @sentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Sent Successfully'**
  String get sentSuccessfully;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// No description provided for @attendance.
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get attendance;

  /// No description provided for @delay.
  ///
  /// In en, this message translates to:
  /// **'Delay'**
  String get delay;

  /// No description provided for @absence.
  ///
  /// In en, this message translates to:
  /// **'Absence'**
  String get absence;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'Hour'**
  String get hour;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @annualLeaves.
  ///
  /// In en, this message translates to:
  /// **'Annual leaves'**
  String get annualLeaves;

  /// No description provided for @taken.
  ///
  /// In en, this message translates to:
  /// **'Taken'**
  String get taken;

  /// No description provided for @residual.
  ///
  /// In en, this message translates to:
  /// **'Residual'**
  String get residual;

  /// No description provided for @monthlyLeaves.
  ///
  /// In en, this message translates to:
  /// **'Monthly leaves'**
  String get monthlyLeaves;

  /// No description provided for @attendanceAndDeparture.
  ///
  /// In en, this message translates to:
  /// **'Attendance and departure'**
  String get attendanceAndDeparture;

  /// No description provided for @disciplined.
  ///
  /// In en, this message translates to:
  /// **'Disciplined'**
  String get disciplined;

  /// No description provided for @delayWithoutDiscount.
  ///
  /// In en, this message translates to:
  /// **'Delay without discount'**
  String get delayWithoutDiscount;

  /// No description provided for @attendanceTime.
  ///
  /// In en, this message translates to:
  /// **'Attendance time'**
  String get attendanceTime;

  /// No description provided for @checkoutTime.
  ///
  /// In en, this message translates to:
  /// **'Checkout time'**
  String get checkoutTime;

  /// No description provided for @clarificationAndExplanations.
  ///
  /// In en, this message translates to:
  /// **'Clarification and explanations'**
  String get clarificationAndExplanations;

  /// No description provided for @sendExplanToHrResources.
  ///
  /// In en, this message translates to:
  /// **'You can send an explanation and clarification to the Human Resources Department about the reason for absence or delay, with the possibility of attaching documents.'**
  String get sendExplanToHrResources;

  /// No description provided for @discountValue.
  ///
  /// In en, this message translates to:
  /// **'Discount value'**
  String get discountValue;

  /// No description provided for @sendExplanSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'An explanation and clarification have been sent to the Human Resources Department regarding the reason for absence or delay, awaiting the official’s response.'**
  String get sendExplanSuccessfully;

  /// No description provided for @facilityManagement.
  ///
  /// In en, this message translates to:
  /// **'Facility management'**
  String get facilityManagement;

  /// No description provided for @branchManagement.
  ///
  /// In en, this message translates to:
  /// **'Branch management'**
  String get branchManagement;

  /// No description provided for @shiftManagement.
  ///
  /// In en, this message translates to:
  /// **'Shift management'**
  String get shiftManagement;

  /// No description provided for @staffManagement.
  ///
  /// In en, this message translates to:
  /// **'Staff management'**
  String get staffManagement;

  /// No description provided for @shiftTable.
  ///
  /// In en, this message translates to:
  /// **'Shift table'**
  String get shiftTable;

  /// No description provided for @companySystemSettings.
  ///
  /// In en, this message translates to:
  /// **'System settings'**
  String get companySystemSettings;

  /// No description provided for @startsFrom.
  ///
  /// In en, this message translates to:
  /// **'Starts from'**
  String get startsFrom;

  /// No description provided for @endsIn.
  ///
  /// In en, this message translates to:
  /// **'Ends in'**
  String get endsIn;

  /// No description provided for @branches.
  ///
  /// In en, this message translates to:
  /// **'Branches'**
  String get branches;

  /// No description provided for @branchName.
  ///
  /// In en, this message translates to:
  /// **'Branch name'**
  String get branchName;

  /// No description provided for @addShift.
  ///
  /// In en, this message translates to:
  /// **'Add Shift'**
  String get addShift;

  /// No description provided for @chooseMoreBranch.
  ///
  /// In en, this message translates to:
  /// **'Branch (you can choose more than one branch)'**
  String get chooseMoreBranch;

  /// No description provided for @choose.
  ///
  /// In en, this message translates to:
  /// **'Choose'**
  String get choose;

  /// No description provided for @shiftName.
  ///
  /// In en, this message translates to:
  /// **'Shift Name'**
  String get shiftName;

  /// No description provided for @introTitle0.
  ///
  /// In en, this message translates to:
  /// **'Employee attendance and departure system'**
  String get introTitle0;

  /// No description provided for @introTitle1.
  ///
  /// In en, this message translates to:
  /// **'Employee attendance and leaves system'**
  String get introTitle1;

  /// No description provided for @introTitle2.
  ///
  /// In en, this message translates to:
  /// **'Managing employee requests'**
  String get introTitle2;

  /// No description provided for @introDisc0.
  ///
  /// In en, this message translates to:
  /// **'We offer you advanced and new solutions to manage employee working hours in the best way.'**
  String get introDisc0;

  /// No description provided for @introDisc1.
  ///
  /// In en, this message translates to:
  /// **'Advanced and new solutions for recording attendance and departure times from work'**
  String get introDisc1;

  /// No description provided for @introDisc2.
  ///
  /// In en, this message translates to:
  /// **'All employee requests, including leave, vacation, advances, and allowances, in one place.'**
  String get introDisc2;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @sickLeave.
  ///
  /// In en, this message translates to:
  /// **'Sick Leave'**
  String get sickLeave;

  /// No description provided for @bereavementLeave.
  ///
  /// In en, this message translates to:
  /// **'Bereavement Leave'**
  String get bereavementLeave;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get accepted;

  /// No description provided for @shift.
  ///
  /// In en, this message translates to:
  /// **'Shift'**
  String get shift;

  /// No description provided for @employee.
  ///
  /// In en, this message translates to:
  /// **'Employee'**
  String get employee;

  /// No description provided for @writeNote.
  ///
  /// In en, this message translates to:
  /// **'Write a note'**
  String get writeNote;

  /// No description provided for @addEmployee.
  ///
  /// In en, this message translates to:
  /// **'Add an employee'**
  String get addEmployee;

  /// No description provided for @totalVacations.
  ///
  /// In en, this message translates to:
  /// **'Total vacations'**
  String get totalVacations;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @obtained.
  ///
  /// In en, this message translates to:
  /// **'Obtained'**
  String get obtained;

  /// No description provided for @vacationDate.
  ///
  /// In en, this message translates to:
  /// **'Vacation date'**
  String get vacationDate;

  /// No description provided for @totalDays.
  ///
  /// In en, this message translates to:
  /// **'Total days'**
  String get totalDays;

  /// No description provided for @waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get waiting;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get startDate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get endDate;

  /// No description provided for @vacationType.
  ///
  /// In en, this message translates to:
  /// **'Vacation type'**
  String get vacationType;

  /// No description provided for @attachFilehere.
  ///
  /// In en, this message translates to:
  /// **'Attach the file here'**
  String get attachFilehere;

  /// No description provided for @max.
  ///
  /// In en, this message translates to:
  /// **'max'**
  String get max;

  /// No description provided for @addBranch.
  ///
  /// In en, this message translates to:
  /// **'Add branch'**
  String get addBranch;

  /// No description provided for @responsibleManager.
  ///
  /// In en, this message translates to:
  /// **'Responsible manager'**
  String get responsibleManager;

  /// No description provided for @workingHours.
  ///
  /// In en, this message translates to:
  /// **'Working hours'**
  String get workingHours;

  /// No description provided for @determineLocationOnMap.
  ///
  /// In en, this message translates to:
  /// **'Determine the location on the map'**
  String get determineLocationOnMap;

  /// No description provided for @departments.
  ///
  /// In en, this message translates to:
  /// **'Departments'**
  String get departments;

  /// No description provided for @addDepartment.
  ///
  /// In en, this message translates to:
  /// **'Add department'**
  String get addDepartment;

  /// No description provided for @departmentName.
  ///
  /// In en, this message translates to:
  /// **'Department name'**
  String get departmentName;

  /// No description provided for @departmentManager.
  ///
  /// In en, this message translates to:
  /// **'Department Manager (if any)'**
  String get departmentManager;

  /// No description provided for @condition.
  ///
  /// In en, this message translates to:
  /// **'The condition'**
  String get condition;

  /// No description provided for @searchByEmployeeName.
  ///
  /// In en, this message translates to:
  /// **'Search by employee name'**
  String get searchByEmployeeName;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @leaves.
  ///
  /// In en, this message translates to:
  /// **'Leaves'**
  String get leaves;

  /// No description provided for @leaveType.
  ///
  /// In en, this message translates to:
  /// **'Leave Type'**
  String get leaveType;

  /// No description provided for @requestDate.
  ///
  /// In en, this message translates to:
  /// **'Request Date'**
  String get requestDate;

  /// No description provided for @leaveTime.
  ///
  /// In en, this message translates to:
  /// **'Leave Time'**
  String get leaveTime;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @department.
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get department;

  /// No description provided for @employeesNumber.
  ///
  /// In en, this message translates to:
  /// **'Employees number'**
  String get employeesNumber;

  /// No description provided for @vacationTabel.
  ///
  /// In en, this message translates to:
  /// **'Vacation tabel'**
  String get vacationTabel;

  /// No description provided for @workTabel.
  ///
  /// In en, this message translates to:
  /// **'Work tabel'**
  String get workTabel;

  /// No description provided for @employees.
  ///
  /// In en, this message translates to:
  /// **'Employees'**
  String get employees;

  /// No description provided for @socialSecurity.
  ///
  /// In en, this message translates to:
  /// **'Social security'**
  String get socialSecurity;

  /// No description provided for @rest.
  ///
  /// In en, this message translates to:
  /// **'Rest'**
  String get rest;

  /// No description provided for @sendNewNotification.
  ///
  /// In en, this message translates to:
  /// **'Send a new notification'**
  String get sendNewNotification;

  /// No description provided for @notificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Notification title'**
  String get notificationTitle;

  /// No description provided for @notificationText.
  ///
  /// In en, this message translates to:
  /// **'Notification text'**
  String get notificationText;

  /// No description provided for @sendingDate.
  ///
  /// In en, this message translates to:
  /// **'Sending date'**
  String get sendingDate;

  /// No description provided for @employmentContracts.
  ///
  /// In en, this message translates to:
  /// **'Employment contracts'**
  String get employmentContracts;

  /// No description provided for @addNewEmployee.
  ///
  /// In en, this message translates to:
  /// **'Add new employee'**
  String get addNewEmployee;

  /// No description provided for @addStaff.
  ///
  /// In en, this message translates to:
  /// **'Add employee'**
  String get addStaff;

  /// No description provided for @personalData.
  ///
  /// In en, this message translates to:
  /// **'Personal data'**
  String get personalData;

  /// No description provided for @employeeName.
  ///
  /// In en, this message translates to:
  /// **'Employee name'**
  String get employeeName;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @maritalStatus.
  ///
  /// In en, this message translates to:
  /// **'Marital status'**
  String get maritalStatus;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @workData.
  ///
  /// In en, this message translates to:
  /// **'Work data'**
  String get workData;

  /// No description provided for @financialStatements.
  ///
  /// In en, this message translates to:
  /// **'Financial statements'**
  String get financialStatements;

  /// No description provided for @confirmAddition.
  ///
  /// In en, this message translates to:
  /// **'Confirm addition'**
  String get confirmAddition;

  /// No description provided for @addAlarm.
  ///
  /// In en, this message translates to:
  /// **'Add alarm'**
  String get addAlarm;

  /// No description provided for @addDiscount.
  ///
  /// In en, this message translates to:
  /// **'Add discount'**
  String get addDiscount;

  /// No description provided for @addIncentive.
  ///
  /// In en, this message translates to:
  /// **'Add incentive'**
  String get addIncentive;

  /// No description provided for @morePersonCanSelected.
  ///
  /// In en, this message translates to:
  /// **'More than one person can be selected.'**
  String get morePersonCanSelected;

  /// No description provided for @discountType.
  ///
  /// In en, this message translates to:
  /// **'Discount type'**
  String get discountType;

  /// No description provided for @branchEmployeeBelongs.
  ///
  /// In en, this message translates to:
  /// **'The branch to which the employee belongs'**
  String get branchEmployeeBelongs;

  /// No description provided for @incentiveValue.
  ///
  /// In en, this message translates to:
  /// **'Incentive value'**
  String get incentiveValue;

  /// No description provided for @leaveRequests.
  ///
  /// In en, this message translates to:
  /// **'Leave requests'**
  String get leaveRequests;

  /// No description provided for @vacationRequests.
  ///
  /// In en, this message translates to:
  /// **'Vacation requests'**
  String get vacationRequests;

  /// No description provided for @breakRequests.
  ///
  /// In en, this message translates to:
  /// **'Break requests'**
  String get breakRequests;

  /// No description provided for @incentiveRequests.
  ///
  /// In en, this message translates to:
  /// **'Incentive requests'**
  String get incentiveRequests;

  /// No description provided for @remainingBalanceAdvance.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance of advance'**
  String get remainingBalanceAdvance;

  /// No description provided for @sureAcceptFile.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to accept the file?'**
  String get sureAcceptFile;

  /// No description provided for @sureRejectFile.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to reject the file?'**
  String get sureRejectFile;

  /// No description provided for @leaveResponse.
  ///
  /// In en, this message translates to:
  /// **'You can leave a response to the employee.'**
  String get leaveResponse;

  /// No description provided for @reasonRejection.
  ///
  /// In en, this message translates to:
  /// **'Reason for rejection'**
  String get reasonRejection;

  /// No description provided for @confirmRejection.
  ///
  /// In en, this message translates to:
  /// **'Confirm rejection'**
  String get confirmRejection;

  /// No description provided for @confirmAcceptance.
  ///
  /// In en, this message translates to:
  /// **'Confirm acceptance'**
  String get confirmAcceptance;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @requestDetails.
  ///
  /// In en, this message translates to:
  /// **'Request details'**
  String get requestDetails;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @acceptanceDate.
  ///
  /// In en, this message translates to:
  /// **'Acceptance date'**
  String get acceptanceDate;

  /// No description provided for @addVacation.
  ///
  /// In en, this message translates to:
  /// **'Add vacation'**
  String get addVacation;

  /// No description provided for @vacationName.
  ///
  /// In en, this message translates to:
  /// **'Vacation name'**
  String get vacationName;

  /// No description provided for @numberDaysRemaining.
  ///
  /// In en, this message translates to:
  /// **'Number days remaining'**
  String get numberDaysRemaining;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
