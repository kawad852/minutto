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

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get requiredField;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Internet Connection Error'**
  String get networkError;

  /// No description provided for @generalError.
  ///
  /// In en, this message translates to:
  /// **'Oops, Something went wrong !'**
  String get generalError;

  /// No description provided for @authFailed.
  ///
  /// In en, this message translates to:
  /// **'Authorization Failed'**
  String get authFailed;

  /// No description provided for @simply.
  ///
  /// In en, this message translates to:
  /// **'ببساطـــــــــــة، '**
  String get simply;

  /// No description provided for @limitless.
  ///
  /// In en, this message translates to:
  /// **'بلا حدود'**
  String get limitless;

  /// No description provided for @usernameEmail.
  ///
  /// In en, this message translates to:
  /// **'اسم المستخدم / البريد الألكتروني'**
  String get usernameEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'هل نسيت كلمة المرور ؟'**
  String get forgotPassword;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'استعادة كلمة المرور'**
  String get resetPassword;

  /// No description provided for @imtithal.
  ///
  /// In en, this message translates to:
  /// **'امتثال'**
  String get imtithal;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @invalidNumber.
  ///
  /// In en, this message translates to:
  /// **'رقم غير صالح'**
  String get invalidNumber;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Must be at least 6 characters'**
  String get passwordTooShort;

  /// No description provided for @passwordNotMatch.
  ///
  /// In en, this message translates to:
  /// **'كلمة المرور غير متطابقة'**
  String get passwordNotMatch;

  /// No description provided for @lostYourPassword.
  ///
  /// In en, this message translates to:
  /// **'هل فقدت كلمة المرور ؟ سهلة'**
  String get lostYourPassword;

  /// No description provided for @youCanRecoverIt.
  ///
  /// In en, this message translates to:
  /// **'يمكنك استعادتها بخطوات بسيطة'**
  String get youCanRecoverIt;

  /// No description provided for @enterEmailToRecoverPass.
  ///
  /// In en, this message translates to:
  /// **'يرجى ادخال بريدك الإلكتروني لإستعادة كلمة المرور.'**
  String get enterEmailToRecoverPass;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'الصفحة الرئيسية'**
  String get home;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'السلام عليكم'**
  String get hello;

  /// No description provided for @facilityCompliance.
  ///
  /// In en, this message translates to:
  /// **'إمتثال المنشأة'**
  String get facilityCompliance;

  /// No description provided for @todayImtithalSummary.
  ///
  /// In en, this message translates to:
  /// **'ملخص إمتثال اليوم'**
  String get todayImtithalSummary;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'المزيد'**
  String get more;

  /// No description provided for @incomplete.
  ///
  /// In en, this message translates to:
  /// **'غير مكتملة'**
  String get incomplete;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'مكتملة'**
  String get complete;

  /// No description provided for @late.
  ///
  /// In en, this message translates to:
  /// **'متأخرة'**
  String get late;

  /// No description provided for @violation.
  ///
  /// In en, this message translates to:
  /// **'مخالفة'**
  String get violation;

  /// No description provided for @searchTaskEmployee.
  ///
  /// In en, this message translates to:
  /// **'ابحث عن مهمة ، موظف'**
  String get searchTaskEmployee;

  /// No description provided for @topTasks.
  ///
  /// In en, this message translates to:
  /// **'ابرز المهام'**
  String get topTasks;

  /// No description provided for @dailyTask.
  ///
  /// In en, this message translates to:
  /// **'مهمة يومية'**
  String get dailyTask;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'التقويم'**
  String get calendar;

  /// No description provided for @addNewTask.
  ///
  /// In en, this message translates to:
  /// **'اضافة مهمة جديدة'**
  String get addNewTask;

  /// No description provided for @monitorViolation.
  ///
  /// In en, this message translates to:
  /// **'رصد مخالفة'**
  String get monitorViolation;

  /// No description provided for @facilityManagement.
  ///
  /// In en, this message translates to:
  /// **'Facility management'**
  String get facilityManagement;

  /// No description provided for @addNewEmployee.
  ///
  /// In en, this message translates to:
  /// **'Add new employee'**
  String get addNewEmployee;

  /// No description provided for @addNewCompliance.
  ///
  /// In en, this message translates to:
  /// **'اضافة امتثال جديد'**
  String get addNewCompliance;

  /// No description provided for @addNewDepartment.
  ///
  /// In en, this message translates to:
  /// **'اضافة قسم جديد'**
  String get addNewDepartment;

  /// No description provided for @sendNewNotification.
  ///
  /// In en, this message translates to:
  /// **'Send a new notification'**
  String get sendNewNotification;

  /// No description provided for @leavesAndHolidays.
  ///
  /// In en, this message translates to:
  /// **'الإجازات والعطلات'**
  String get leavesAndHolidays;

  /// No description provided for @lawsAndRegulations.
  ///
  /// In en, this message translates to:
  /// **'القوانين والأنظمة'**
  String get lawsAndRegulations;

  /// No description provided for @violations.
  ///
  /// In en, this message translates to:
  /// **'المخالفات'**
  String get violations;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get reports;

  /// No description provided for @searchDepartmentEmployee.
  ///
  /// In en, this message translates to:
  /// **'ابحث عن قسم ، موظف'**
  String get searchDepartmentEmployee;

  /// No description provided for @facilityDepartments.
  ///
  /// In en, this message translates to:
  /// **'اقسام المنشأة'**
  String get facilityDepartments;

  /// No description provided for @employee.
  ///
  /// In en, this message translates to:
  /// **'Employee'**
  String get employee;

  /// No description provided for @responsibleManager.
  ///
  /// In en, this message translates to:
  /// **'Responsible manager'**
  String get responsibleManager;

  /// No description provided for @personalAccount.
  ///
  /// In en, this message translates to:
  /// **'الحساب الشخصي'**
  String get personalAccount;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'النظام'**
  String get system;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @sendComplaintOrReport.
  ///
  /// In en, this message translates to:
  /// **'ارسال شكوى او بلاغ للإدارة'**
  String get sendComplaintOrReport;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'تغيير كلمة المرور'**
  String get changePassword;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @addNewLeave.
  ///
  /// In en, this message translates to:
  /// **'اضافة اجازة جديدة'**
  String get addNewLeave;

  /// No description provided for @leaveNote.
  ///
  /// In en, this message translates to:
  /// **'يمكنك ادخال ايام اجازة او عطلات لإعفاء الموظفين جميعاً من مهام الإمتثال خلال ايام الإجازة'**
  String get leaveNote;

  /// No description provided for @leaveNo.
  ///
  /// In en, this message translates to:
  /// **'اجازة رقم'**
  String get leaveNo;

  /// No description provided for @leaveSetFromDate.
  ///
  /// In en, this message translates to:
  /// **'تم تحديد الإجازة من تاريخ'**
  String get leaveSetFromDate;

  /// No description provided for @toDate.
  ///
  /// In en, this message translates to:
  /// **'To date'**
  String get toDate;

  /// No description provided for @monitoredViolations.
  ///
  /// In en, this message translates to:
  /// **'مخالفات مرصودة'**
  String get monitoredViolations;

  /// No description provided for @searchViolationEmployee.
  ///
  /// In en, this message translates to:
  /// **'ابحث عن مخالفة ، باسم الموظف'**
  String get searchViolationEmployee;

  /// No description provided for @lastResponseBy.
  ///
  /// In en, this message translates to:
  /// **'اخر رد من خلال'**
  String get lastResponseBy;

  /// No description provided for @leaveTitle.
  ///
  /// In en, this message translates to:
  /// **'عنوان الإجازة'**
  String get leaveTitle;

  /// No description provided for @taskTitleToComplyWith.
  ///
  /// In en, this message translates to:
  /// **'عنوان المهمة المطلوب الإمتثال لها'**
  String get taskTitleToComplyWith;

  /// No description provided for @leaveDescription.
  ///
  /// In en, this message translates to:
  /// **'وصف الإجازة'**
  String get leaveDescription;

  /// No description provided for @requiredTaskDescription.
  ///
  /// In en, this message translates to:
  /// **'وصف المهمة المطلوبة'**
  String get requiredTaskDescription;

  /// No description provided for @fromDate.
  ///
  /// In en, this message translates to:
  /// **'From date'**
  String get fromDate;

  /// No description provided for @doYouHaveComplaintReport.
  ///
  /// In en, this message translates to:
  /// **'هل لديك شكوى او بلاغ ؟'**
  String get doYouHaveComplaintReport;

  /// No description provided for @complaintNote.
  ///
  /// In en, this message translates to:
  /// **'ارسله للإدارة بكل خصوصية وسرية وسيتم العمل عليه لأجل المصلحة العامة للمنشأة بجدية'**
  String get complaintNote;

  /// No description provided for @yourMessage.
  ///
  /// In en, this message translates to:
  /// **'رسالتك'**
  String get yourMessage;

  /// No description provided for @attachFilesImages.
  ///
  /// In en, this message translates to:
  /// **'إرفاق ملفات ، صور'**
  String get attachFilesImages;

  /// No description provided for @department.
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get department;

  /// No description provided for @thisMonthComplianceAssessment.
  ///
  /// In en, this message translates to:
  /// **'تقييم الإمتثال هذا الشهر'**
  String get thisMonthComplianceAssessment;

  /// No description provided for @since.
  ///
  /// In en, this message translates to:
  /// **'منذ'**
  String get since;

  /// No description provided for @toDay.
  ///
  /// In en, this message translates to:
  /// **'الى اليوم'**
  String get toDay;

  /// No description provided for @departmentComplianceAssessment.
  ///
  /// In en, this message translates to:
  /// **'تقييم امتثال القسم'**
  String get departmentComplianceAssessment;

  /// No description provided for @mostCompliantEmployee.
  ///
  /// In en, this message translates to:
  /// **'الموظف الأكثر امتثالاً'**
  String get mostCompliantEmployee;

  /// No description provided for @leastCompliantEmployee.
  ///
  /// In en, this message translates to:
  /// **'الموظف الأقل امتثالاً'**
  String get leastCompliantEmployee;

  /// No description provided for @searchForEmployee.
  ///
  /// In en, this message translates to:
  /// **'ابحث عن موظف'**
  String get searchForEmployee;

  /// No description provided for @departmentEmployees.
  ///
  /// In en, this message translates to:
  /// **'موظفين القسم'**
  String get departmentEmployees;

  /// No description provided for @complianceAssessment.
  ///
  /// In en, this message translates to:
  /// **'تقييم الإمتثال'**
  String get complianceAssessment;

  /// No description provided for @employeeNo.
  ///
  /// In en, this message translates to:
  /// **'رقم الموظف'**
  String get employeeNo;

  /// No description provided for @tasks.
  ///
  /// In en, this message translates to:
  /// **'المهام'**
  String get tasks;

  /// No description provided for @lateTasks.
  ///
  /// In en, this message translates to:
  /// **'مهام متأخرة'**
  String get lateTasks;

  /// No description provided for @completedTasks.
  ///
  /// In en, this message translates to:
  /// **'مهام مكتملة'**
  String get completedTasks;

  /// No description provided for @incompleteTasks.
  ///
  /// In en, this message translates to:
  /// **'مهام غير مكتملة'**
  String get incompleteTasks;

  /// No description provided for @taskTitle.
  ///
  /// In en, this message translates to:
  /// **'عنوان المهمة'**
  String get taskTitle;

  /// No description provided for @taskDescription.
  ///
  /// In en, this message translates to:
  /// **'وصف المهمة'**
  String get taskDescription;

  /// No description provided for @deliveryTime.
  ///
  /// In en, this message translates to:
  /// **'وقت التسليم'**
  String get deliveryTime;

  /// No description provided for @gracePeriod.
  ///
  /// In en, this message translates to:
  /// **'مدة السماح'**
  String get gracePeriod;

  /// No description provided for @taskRepetition.
  ///
  /// In en, this message translates to:
  /// **'تكرار المهمة'**
  String get taskRepetition;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'يومياً'**
  String get daily;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'اسبوعياً'**
  String get weekly;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @noRepetition.
  ///
  /// In en, this message translates to:
  /// **'بدون تكرار'**
  String get noRepetition;

  /// No description provided for @specifyTheDayForTaskRepetition.
  ///
  /// In en, this message translates to:
  /// **'حدد اليوم المخصص لتكرار المهمة'**
  String get specifyTheDayForTaskRepetition;

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

  /// No description provided for @notesAboutTheTask.
  ///
  /// In en, this message translates to:
  /// **'ملاحظات حول المهمة'**
  String get notesAboutTheTask;

  /// No description provided for @notesAboutTheTaskExecutionMechanism.
  ///
  /// In en, this message translates to:
  /// **'ملاحظات حول الية تنفيذ المهمة'**
  String get notesAboutTheTaskExecutionMechanism;

  /// No description provided for @penaltyForNonCompliance.
  ///
  /// In en, this message translates to:
  /// **'عقوبة عدم الإمتثال'**
  String get penaltyForNonCompliance;

  /// No description provided for @descriptionPenaltyForNonCompliance.
  ///
  /// In en, this message translates to:
  /// **'وصف عقوبة عدم الإمتثال'**
  String get descriptionPenaltyForNonCompliance;

  /// No description provided for @attachFiles.
  ///
  /// In en, this message translates to:
  /// **'إرفاق ملفات'**
  String get attachFiles;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'انشاء'**
  String get create;

  /// No description provided for @attachedFiles.
  ///
  /// In en, this message translates to:
  /// **'الملفات المرفقة'**
  String get attachedFiles;

  /// No description provided for @timeRemainingUntilDeadline.
  ///
  /// In en, this message translates to:
  /// **'الوقت المتبقي على موعد التسليم'**
  String get timeRemainingUntilDeadline;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'Second'**
  String get second;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'دقيقة'**
  String get minute;

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

  /// No description provided for @responsibleParties.
  ///
  /// In en, this message translates to:
  /// **'المسؤولين'**
  String get responsibleParties;

  /// No description provided for @deliveryDateTime.
  ///
  /// In en, this message translates to:
  /// **'تاريخ ووقت التسليم'**
  String get deliveryDateTime;

  /// No description provided for @takingActionOnTask.
  ///
  /// In en, this message translates to:
  /// **'اتخاذ اجراء في مهمة'**
  String get takingActionOnTask;

  /// No description provided for @addRemoveEmployee.
  ///
  /// In en, this message translates to:
  /// **'اضافة / ازالة موظف'**
  String get addRemoveEmployee;

  /// No description provided for @modifyTask.
  ///
  /// In en, this message translates to:
  /// **'تعديل المهمة'**
  String get modifyTask;

  /// No description provided for @responsibleDepartment.
  ///
  /// In en, this message translates to:
  /// **'القسم المسؤول'**
  String get responsibleDepartment;

  /// No description provided for @responsibleEmployees.
  ///
  /// In en, this message translates to:
  /// **'الموظفين المسؤولين'**
  String get responsibleEmployees;

  /// No description provided for @violationDetectedInTask.
  ///
  /// In en, this message translates to:
  /// **'رصد مخالفة في مهمة'**
  String get violationDetectedInTask;

  /// No description provided for @typeOfViolation.
  ///
  /// In en, this message translates to:
  /// **'نوع المخالفة'**
  String get typeOfViolation;

  /// No description provided for @nonCompliance.
  ///
  /// In en, this message translates to:
  /// **'عدم امتثال'**
  String get nonCompliance;

  /// No description provided for @complianceOfficerNotesExplanations.
  ///
  /// In en, this message translates to:
  /// **'ملاحظات وشروحات موظف الأمتثال'**
  String get complianceOfficerNotesExplanations;

  /// No description provided for @violationObservedInTask.
  ///
  /// In en, this message translates to:
  /// **'مخالفة مرصودة في مهمة'**
  String get violationObservedInTask;

  /// No description provided for @theViolationWasDetectedAgainst.
  ///
  /// In en, this message translates to:
  /// **'تم رصد المخالفة بحق'**
  String get theViolationWasDetectedAgainst;

  /// No description provided for @dateAndTimeOfViolation.
  ///
  /// In en, this message translates to:
  /// **'تاريخ ووقت المخالفة'**
  String get dateAndTimeOfViolation;

  /// No description provided for @finalAdministrativeDecision.
  ///
  /// In en, this message translates to:
  /// **'القرار الإداري النهائي'**
  String get finalAdministrativeDecision;

  /// No description provided for @addReply.
  ///
  /// In en, this message translates to:
  /// **'اضافة رد'**
  String get addReply;

  /// No description provided for @managementDecision.
  ///
  /// In en, this message translates to:
  /// **'قرار الإدارة'**
  String get managementDecision;

  /// No description provided for @cancelPenalty.
  ///
  /// In en, this message translates to:
  /// **'إلغاء العقوبة'**
  String get cancelPenalty;

  /// No description provided for @confirmPenalty.
  ///
  /// In en, this message translates to:
  /// **'تأكيد العقوبة'**
  String get confirmPenalty;

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

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @pendingStatus.
  ///
  /// In en, this message translates to:
  /// **'بإنتظار التنفيذ'**
  String get pendingStatus;

  /// No description provided for @inReviewStatus.
  ///
  /// In en, this message translates to:
  /// **'بإنتظار المراجعة'**
  String get inReviewStatus;

  /// No description provided for @completedStatus.
  ///
  /// In en, this message translates to:
  /// **'مكتملة'**
  String get completedStatus;

  /// No description provided for @task.
  ///
  /// In en, this message translates to:
  /// **'مهمة'**
  String get task;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @savedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'تم الحفظ'**
  String get savedSuccessfully;

  /// No description provided for @generalSafety.
  ///
  /// In en, this message translates to:
  /// **'سلامة عامة'**
  String get generalSafety;

  /// No description provided for @deliveryDate.
  ///
  /// In en, this message translates to:
  /// **'تاريخ التسليم'**
  String get deliveryDate;

  /// No description provided for @personalPhotoRequired.
  ///
  /// In en, this message translates to:
  /// **'الصورة الشخصية مطلوبة'**
  String get personalPhotoRequired;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'اسم المستخدم'**
  String get userName;

  /// No description provided for @addEmployee.
  ///
  /// In en, this message translates to:
  /// **'Add an employee'**
  String get addEmployee;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Job title'**
  String get jobTitle;

  /// No description provided for @branch.
  ///
  /// In en, this message translates to:
  /// **'Branch'**
  String get branch;

  /// No description provided for @nationalIDNumber.
  ///
  /// In en, this message translates to:
  /// **'الرقم الوطني'**
  String get nationalIDNumber;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'رقم الهاتف'**
  String get phoneNumber;

  /// No description provided for @phoneNum.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNum;

  /// No description provided for @salary.
  ///
  /// In en, this message translates to:
  /// **'الأجر'**
  String get salary;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get startDate;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get role;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'آدمن'**
  String get admin;

  /// No description provided for @manager.
  ///
  /// In en, this message translates to:
  /// **'مدير'**
  String get manager;

  /// No description provided for @emtithalManager.
  ///
  /// In en, this message translates to:
  /// **'مدير إمتثال'**
  String get emtithalManager;

  /// No description provided for @departmentManager.
  ///
  /// In en, this message translates to:
  /// **'Department Manager (if any)'**
  String get departmentManager;

  /// No description provided for @searchCountryOrCode.
  ///
  /// In en, this message translates to:
  /// **'Search for the country name or dial code'**
  String get searchCountryOrCode;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @addedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Added Successfully'**
  String get addedSuccessfully;

  /// No description provided for @employees.
  ///
  /// In en, this message translates to:
  /// **'Employees'**
  String get employees;

  /// No description provided for @departments.
  ///
  /// In en, this message translates to:
  /// **'Departments'**
  String get departments;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'ممتاز'**
  String get excellent;

  /// No description provided for @veryGood.
  ///
  /// In en, this message translates to:
  /// **'جيد جدا'**
  String get veryGood;

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'جيد'**
  String get good;

  /// No description provided for @weak.
  ///
  /// In en, this message translates to:
  /// **'ضعيف'**
  String get weak;

  /// No description provided for @sinceComplianceAssessment.
  ///
  /// In en, this message translates to:
  /// **'تقييم الإمتثال منذ'**
  String get sinceComplianceAssessment;

  /// No description provided for @selectEmployees.
  ///
  /// In en, this message translates to:
  /// **'إختر الموظفين'**
  String get selectEmployees;

  /// No description provided for @generalViolation.
  ///
  /// In en, this message translates to:
  /// **'رصد مخالفة عامة'**
  String get generalViolation;

  /// No description provided for @confirmed.
  ///
  /// In en, this message translates to:
  /// **'تم التأكيد'**
  String get confirmed;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'تم الإلغاء'**
  String get canceled;

  /// No description provided for @displayName.
  ///
  /// In en, this message translates to:
  /// **'Display name'**
  String get displayName;

  /// No description provided for @build.
  ///
  /// In en, this message translates to:
  /// **'Build'**
  String get build;

  /// No description provided for @manage.
  ///
  /// In en, this message translates to:
  /// **'Manage'**
  String get manage;

  /// No description provided for @roles.
  ///
  /// In en, this message translates to:
  /// **'Roles'**
  String get roles;

  /// No description provided for @admins.
  ///
  /// In en, this message translates to:
  /// **'Admins'**
  String get admins;

  /// No description provided for @companies.
  ///
  /// In en, this message translates to:
  /// **'الشركات'**
  String get companies;

  /// No description provided for @invalidCredential.
  ///
  /// In en, this message translates to:
  /// **'بيانات الاعتماد غير صالحة'**
  String get invalidCredential;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'تحديث'**
  String get update;

  /// No description provided for @createdAt.
  ///
  /// In en, this message translates to:
  /// **'Created At'**
  String get createdAt;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @adminLogin.
  ///
  /// In en, this message translates to:
  /// **'تسجيل دخول المسؤول'**
  String get adminLogin;

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

  /// No description provided for @policies.
  ///
  /// In en, this message translates to:
  /// **'Polices'**
  String get policies;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @body.
  ///
  /// In en, this message translates to:
  /// **'المحتوى'**
  String get body;

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

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

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

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get users;

  /// No description provided for @successfullyUpdated.
  ///
  /// In en, this message translates to:
  /// **'Successfully Updated'**
  String get successfullyUpdated;

  /// No description provided for @configure.
  ///
  /// In en, this message translates to:
  /// **'Configure'**
  String get configure;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'الشركة'**
  String get company;

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

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

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

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @applicationSettings.
  ///
  /// In en, this message translates to:
  /// **'Application settings'**
  String get applicationSettings;

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

  /// No description provided for @employeeData.
  ///
  /// In en, this message translates to:
  /// **'Employee data'**
  String get employeeData;

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

  /// No description provided for @newOrder.
  ///
  /// In en, this message translates to:
  /// **'New order'**
  String get newOrder;

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

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

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

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @writeNote.
  ///
  /// In en, this message translates to:
  /// **'Write a note'**
  String get writeNote;

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

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

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

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @single.
  ///
  /// In en, this message translates to:
  /// **'Single'**
  String get single;

  /// No description provided for @married.
  ///
  /// In en, this message translates to:
  /// **'Married'**
  String get married;

  /// No description provided for @divorced.
  ///
  /// In en, this message translates to:
  /// **'Divorced'**
  String get divorced;

  /// No description provided for @widowed.
  ///
  /// In en, this message translates to:
  /// **'Widowed'**
  String get widowed;

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

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @vacationsAndLeaves.
  ///
  /// In en, this message translates to:
  /// **'Vacations and leaves'**
  String get vacationsAndLeaves;

  /// No description provided for @breakDuration.
  ///
  /// In en, this message translates to:
  /// **'Break duration'**
  String get breakDuration;

  /// No description provided for @deductionRates.
  ///
  /// In en, this message translates to:
  /// **'Deduction rates'**
  String get deductionRates;

  /// No description provided for @companyDepartments.
  ///
  /// In en, this message translates to:
  /// **'Company departments'**
  String get companyDepartments;

  /// No description provided for @gracePeriodShift.
  ///
  /// In en, this message translates to:
  /// **'Grace period per shift (in minutes)'**
  String get gracePeriodShift;

  /// No description provided for @afterGracePeriod.
  ///
  /// In en, this message translates to:
  /// **'After the grace period, the employee is considered late.'**
  String get afterGracePeriod;

  /// No description provided for @deductionInCaseDelay.
  ///
  /// In en, this message translates to:
  /// **'Deduction in case of delay is a percentage or number of hours from the wages for one day'**
  String get deductionInCaseDelay;

  /// No description provided for @fromMinutes.
  ///
  /// In en, this message translates to:
  /// **'From (minutes)'**
  String get fromMinutes;

  /// No description provided for @toMinutes.
  ///
  /// In en, this message translates to:
  /// **'To (minutes)'**
  String get toMinutes;

  /// No description provided for @numberDiscountHours.
  ///
  /// In en, this message translates to:
  /// **'Number discount hours'**
  String get numberDiscountHours;

  /// No description provided for @addAnotherDiscount.
  ///
  /// In en, this message translates to:
  /// **'Add another discount'**
  String get addAnotherDiscount;

  /// No description provided for @numberAnnualLeaveDays.
  ///
  /// In en, this message translates to:
  /// **'Number of annual leave days'**
  String get numberAnnualLeaveDays;

  /// No description provided for @numberSickLeaveDays.
  ///
  /// In en, this message translates to:
  /// **'Number of sick leave days'**
  String get numberSickLeaveDays;

  /// No description provided for @maxDaysRequestedOnetime.
  ///
  /// In en, this message translates to:
  /// **'Max number of days that can be requested at one time'**
  String get maxDaysRequestedOnetime;

  /// No description provided for @possibilityCarryingDays.
  ///
  /// In en, this message translates to:
  /// **'Possibility of carrying over unused days to the new year'**
  String get possibilityCarryingDays;

  /// No description provided for @maximumCarryover.
  ///
  /// In en, this message translates to:
  /// **'Maximum carryover'**
  String get maximumCarryover;

  /// No description provided for @facilitySocialSecurity.
  ///
  /// In en, this message translates to:
  /// **'The facility is subject to social security'**
  String get facilitySocialSecurity;

  /// No description provided for @socialSecurityDeductionSalary.
  ///
  /// In en, this message translates to:
  /// **'Social security deduction rate from monthly salary'**
  String get socialSecurityDeductionSalary;

  /// No description provided for @addNewQuestion.
  ///
  /// In en, this message translates to:
  /// **'Add new question'**
  String get addNewQuestion;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @answer.
  ///
  /// In en, this message translates to:
  /// **'Answer'**
  String get answer;

  /// No description provided for @citiesManagement.
  ///
  /// In en, this message translates to:
  /// **'Cities Management'**
  String get citiesManagement;

  /// No description provided for @cities.
  ///
  /// In en, this message translates to:
  /// **'Cities'**
  String get cities;

  /// No description provided for @addCity.
  ///
  /// In en, this message translates to:
  /// **'Add City'**
  String get addCity;

  /// No description provided for @updatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Updated Successfully'**
  String get updatedSuccessfully;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @salaryAdvanceRequest.
  ///
  /// In en, this message translates to:
  /// **'Salary Advance Request'**
  String get salaryAdvanceRequest;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @breaks.
  ///
  /// In en, this message translates to:
  /// **'Breaks'**
  String get breaks;

  /// No description provided for @companyCodeError.
  ///
  /// In en, this message translates to:
  /// **'Company code is not valid'**
  String get companyCodeError;

  /// No description provided for @otpResendMsg.
  ///
  /// In en, this message translates to:
  /// **'OTP code has been resent'**
  String get otpResendMsg;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the code? You can resend the code again after '**
  String get didntReceiveCode;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @codeResent.
  ///
  /// In en, this message translates to:
  /// **'Code has been resent.'**
  String get codeResent;

  /// No description provided for @attendanceSuccessMsg.
  ///
  /// In en, this message translates to:
  /// **'Verification Success'**
  String get attendanceSuccessMsg;

  /// No description provided for @attendanceFailedTitle.
  ///
  /// In en, this message translates to:
  /// **'Verification Failed'**
  String get attendanceFailedTitle;

  /// No description provided for @attendanceFailedBody.
  ///
  /// In en, this message translates to:
  /// **'Please be present at the workplace and try again, or try using one of the other methods'**
  String get attendanceFailedBody;

  /// No description provided for @accountUnderReview.
  ///
  /// In en, this message translates to:
  /// **'Your account is under review'**
  String get accountUnderReview;

  /// No description provided for @accountUnderReviewDescription.
  ///
  /// In en, this message translates to:
  /// **'Please wait until an administrator approves your account.'**
  String get accountUnderReviewDescription;

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

  /// No description provided for @invalidPhoneNum.
  ///
  /// In en, this message translates to:
  /// **'Invalid Phone Number'**
  String get invalidPhoneNum;

  /// No description provided for @engage.
  ///
  /// In en, this message translates to:
  /// **'Engage'**
  String get engage;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @countrySearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search for the country name or dial code...'**
  String get countrySearchHint;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No Results'**
  String get noResults;

  /// No description provided for @thisIsDayOffMsg.
  ///
  /// In en, this message translates to:
  /// **'Today is your day off'**
  String get thisIsDayOffMsg;

  /// No description provided for @tooEarlyCheckInMsg.
  ///
  /// In en, this message translates to:
  /// **'You can check in only within 15 minutes before your shift starts.'**
  String get tooEarlyCheckInMsg;

  /// No description provided for @breakLabel.
  ///
  /// In en, this message translates to:
  /// **'Break'**
  String get breakLabel;

  /// No description provided for @checkOut.
  ///
  /// In en, this message translates to:
  /// **'Check out'**
  String get checkOut;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOtp;

  /// No description provided for @salaryReleaseDay.
  ///
  /// In en, this message translates to:
  /// **'Salary Release Day'**
  String get salaryReleaseDay;

  /// No description provided for @latitude.
  ///
  /// In en, this message translates to:
  /// **'Latitude'**
  String get latitude;

  /// No description provided for @longitude.
  ///
  /// In en, this message translates to:
  /// **'Longitude'**
  String get longitude;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @allowedAdvanceMessage.
  ///
  /// In en, this message translates to:
  /// **'The allowed monthly advance is 30% of the basic salary with a value of {value} {currency}.'**
  String allowedAdvanceMessage(Object currency, Object value);

  /// No description provided for @remainingAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Remaining amount: {amount} {currency}'**
  String remainingAmountLabel(Object amount, Object currency);

  /// No description provided for @maxRemainingSalaryAdvancedAmountMsg.
  ///
  /// In en, this message translates to:
  /// **'You cannot request more than the remaining allowed advance amount.'**
  String get maxRemainingSalaryAdvancedAmountMsg;
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
