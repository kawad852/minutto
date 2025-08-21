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
  /// **'New Order'**
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
