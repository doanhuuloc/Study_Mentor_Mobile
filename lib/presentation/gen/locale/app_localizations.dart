import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'locale/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
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
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @couldNotLunch.
  ///
  /// In en, this message translates to:
  /// **'I couldn\'t have launch {content}'**
  String couldNotLunch(String content);

  /// No description provided for @loginAndSignUp.
  ///
  /// In en, this message translates to:
  /// **'Login and sign up'**
  String get loginAndSignUp;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @findPassword.
  ///
  /// In en, this message translates to:
  /// **'Find password'**
  String get findPassword;

  /// No description provided for @pressAgainToCloseApp.
  ///
  /// In en, this message translates to:
  /// **'Press again to close the app.'**
  String get pressAgainToCloseApp;

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{time} hours ago'**
  String hoursAgo(String time);

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{time} minutes ago'**
  String minutesAgo(String time);

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @pleaseLoginToViewRegisteredInformation.
  ///
  /// In en, this message translates to:
  /// **'Please login to view registered information. Would you like to log in?'**
  String get pleaseLoginToViewRegisteredInformation;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @emptyList.
  ///
  /// In en, this message translates to:
  /// **'Empty'**
  String get emptyList;

  /// No description provided for @connectionFailure.
  ///
  /// In en, this message translates to:
  /// **'can not connect to server. Please try again later'**
  String get connectionFailure;

  /// No description provided for @timeoutFailure.
  ///
  /// In en, this message translates to:
  /// **'request timeout'**
  String get timeoutFailure;

  /// No description provided for @otherDioFailure.
  ///
  /// In en, this message translates to:
  /// **'some thing went wrong'**
  String get otherDioFailure;

  /// No description provided for @convertDataFailure.
  ///
  /// In en, this message translates to:
  /// **'convert data failure'**
  String get convertDataFailure;

  /// No description provided for @genericFailure.
  ///
  /// In en, this message translates to:
  /// **'generic failure'**
  String get genericFailure;

  /// No description provided for @persistentFailure.
  ///
  /// In en, this message translates to:
  /// **'persistent failure'**
  String get persistentFailure;

  /// No description provided for @notificationAlert.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notificationAlert;

  /// No description provided for @passwordInvalid.
  ///
  /// In en, this message translates to:
  /// **'Combination of alphanumeric and special characters, minimum 8 characters'**
  String get passwordInvalid;

  /// No description provided for @confirmPasswordNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get confirmPasswordNotMatch;

  /// No description provided for @phoneInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number format.'**
  String get phoneInvalid;

  /// No description provided for @otpInvalid.
  ///
  /// In en, this message translates to:
  /// **'6-digit number allowed'**
  String get otpInvalid;

  /// No description provided for @phoneNumberNotExisted.
  ///
  /// In en, this message translates to:
  /// **'This phone number does not exist in the application.'**
  String get phoneNumberNotExisted;

  /// No description provided for @takePicture.
  ///
  /// In en, this message translates to:
  /// **'Take picture'**
  String get takePicture;

  /// No description provided for @pickFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get pickFromGallery;

  /// No description provided for @someThingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get someThingWentWrong;

  /// No description provided for @deletePhoto.
  ///
  /// In en, this message translates to:
  /// **'Delete photo'**
  String get deletePhoto;

  /// No description provided for @compose.
  ///
  /// In en, this message translates to:
  /// **'Compose'**
  String get compose;

  /// No description provided for @empty.
  ///
  /// In en, this message translates to:
  /// **'This field cannot be empty.'**
  String get empty;

  /// No description provided for @usernameInvalid.
  ///
  /// In en, this message translates to:
  /// **'Combination of alphanumeric, minimum 6 characters'**
  String get usernameInvalid;

  /// No description provided for @numberProducts.
  ///
  /// In en, this message translates to:
  /// **'{number} items'**
  String numberProducts(Object number);

  /// No description provided for @changeYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Change your password'**
  String get changeYourPassword;

  /// No description provided for @oldPassword.
  ///
  /// In en, this message translates to:
  /// **'Old password'**
  String get oldPassword;

  /// No description provided for @newPasssword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newPasssword;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @fullname.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullname;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

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

  /// No description provided for @dateOfbirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfbirth;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @loginYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Login your account'**
  String get loginYourAccount;

  /// No description provided for @socialAccountLogin.
  ///
  /// In en, this message translates to:
  /// **'Social account login'**
  String get socialAccountLogin;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @turnOn.
  ///
  /// In en, this message translates to:
  /// **'Turn on'**
  String get turnOn;

  /// No description provided for @turnOff.
  ///
  /// In en, this message translates to:
  /// **'Turn off'**
  String get turnOff;

  /// No description provided for @vietnamese.
  ///
  /// In en, this message translates to:
  /// **'Tiếng Việt'**
  String get vietnamese;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get changePassword;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @registerYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Register your account'**
  String get registerYourAccount;

  /// No description provided for @socialAccountRegister.
  ///
  /// In en, this message translates to:
  /// **'Social account register'**
  String get socialAccountRegister;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPassword;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @libraryPicture.
  ///
  /// In en, this message translates to:
  /// **' Library picture'**
  String get libraryPicture;

  /// No description provided for @chooseFile.
  ///
  /// In en, this message translates to:
  /// **'Choose file'**
  String get chooseFile;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @aISystem.
  ///
  /// In en, this message translates to:
  /// **'AI system'**
  String get aISystem;

  /// No description provided for @instructor.
  ///
  /// In en, this message translates to:
  /// **'Intructor'**
  String get instructor;

  /// No description provided for @emptyChatAI.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any chat with AI'**
  String get emptyChatAI;

  /// No description provided for @neW.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get neW;

  /// No description provided for @accepted.
  ///
  /// In en, this message translates to:
  /// **'Accepted'**
  String get accepted;

  /// No description provided for @answered.
  ///
  /// In en, this message translates to:
  /// **'Answered'**
  String get answered;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @findingIntructor.
  ///
  /// In en, this message translates to:
  /// **'Finding intructor'**
  String get findingIntructor;

  /// No description provided for @emptyQuestion.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any question with this status'**
  String get emptyQuestion;

  /// No description provided for @fullAI.
  ///
  /// In en, this message translates to:
  /// **'Full AI'**
  String get fullAI;

  /// No description provided for @aIFree.
  ///
  /// In en, this message translates to:
  /// **'AI free'**
  String get aIFree;

  /// No description provided for @aIUpgrade.
  ///
  /// In en, this message translates to:
  /// **'AI upgrade'**
  String get aIUpgrade;

  /// No description provided for @qAviaFile.
  ///
  /// In en, this message translates to:
  /// **'Q&A via file'**
  String get qAviaFile;

  /// No description provided for @intructorAnswerQuestion.
  ///
  /// In en, this message translates to:
  /// **'The instructor will help you answer the questions'**
  String get intructorAnswerQuestion;

  /// No description provided for @ggMeet.
  ///
  /// In en, this message translates to:
  /// **'Google meet'**
  String get ggMeet;

  /// No description provided for @intructorGGmeet.
  ///
  /// In en, this message translates to:
  /// **'Instructors answer questions directly through ggmeet'**
  String get intructorGGmeet;

  /// No description provided for @helloEveryone.
  ///
  /// In en, this message translates to:
  /// **'Hello everyone'**
  String get helloEveryone;

  /// No description provided for @letDiscover.
  ///
  /// In en, this message translates to:
  /// **'Let\'s discover'**
  String get letDiscover;

  /// No description provided for @homePage.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homePage;

  /// No description provided for @createQuestion.
  ///
  /// In en, this message translates to:
  /// **'Create question'**
  String get createQuestion;

  /// No description provided for @titleQuestion.
  ///
  /// In en, this message translates to:
  /// **'Title question'**
  String get titleQuestion;

  /// No description provided for @contentQuestion.
  ///
  /// In en, this message translates to:
  /// **'Content question'**
  String get contentQuestion;

  /// No description provided for @fileQuestion.
  ///
  /// In en, this message translates to:
  /// **'File question'**
  String get fileQuestion;

  /// No description provided for @questionLevel.
  ///
  /// In en, this message translates to:
  /// **'Question level'**
  String get questionLevel;

  /// No description provided for @grade.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get grade;

  /// No description provided for @subject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get subject;

  /// No description provided for @askForStar.
  ///
  /// In en, this message translates to:
  /// **'Ask for the instructor\'s star number'**
  String get askForStar;

  /// No description provided for @star.
  ///
  /// In en, this message translates to:
  /// **'star'**
  String get star;

  /// No description provided for @timeFindIntructor.
  ///
  /// In en, this message translates to:
  /// **'Time to find an instructor'**
  String get timeFindIntructor;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'{minute} minute'**
  String minute(String minute);

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'{hour} hour'**
  String hour(String hour);

  /// No description provided for @timeAnswerQuestion.
  ///
  /// In en, this message translates to:
  /// **'Time to answer questions'**
  String get timeAnswerQuestion;

  /// No description provided for @voucher.
  ///
  /// In en, this message translates to:
  /// **'Voucher'**
  String get voucher;

  /// No description provided for @emptyVoucher.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any voucher'**
  String get emptyVoucher;

  /// No description provided for @paymentInfomation.
  ///
  /// In en, this message translates to:
  /// **'Payment infomation'**
  String get paymentInfomation;

  /// No description provided for @totalPayment.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get totalPayment;

  /// No description provided for @voucherDiscount.
  ///
  /// In en, this message translates to:
  /// **'Voucher discount'**
  String get voucherDiscount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay {money}'**
  String pay(String money);

  /// No description provided for @detailedQuestion.
  ///
  /// In en, this message translates to:
  /// **'Detailed question'**
  String get detailedQuestion;

  /// No description provided for @findIntructor.
  ///
  /// In en, this message translates to:
  /// **'Find intructor'**
  String get findIntructor;

  /// No description provided for @goHomePage.
  ///
  /// In en, this message translates to:
  /// **'Go home page'**
  String get goHomePage;

  /// No description provided for @ggmeetLink.
  ///
  /// In en, this message translates to:
  /// **'Link google meet'**
  String get ggmeetLink;

  /// No description provided for @questionInfomation.
  ///
  /// In en, this message translates to:
  /// **'Question infomation'**
  String get questionInfomation;

  /// No description provided for @answeredInfomation.
  ///
  /// In en, this message translates to:
  /// **'Answer information'**
  String get answeredInfomation;

  /// No description provided for @intructorAnsweringQuestion.
  ///
  /// In en, this message translates to:
  /// **'Intructor is answering question'**
  String get intructorAnsweringQuestion;

  /// No description provided for @attachments.
  ///
  /// In en, this message translates to:
  /// **'Attachments'**
  String get attachments;

  /// No description provided for @joinGGMeet.
  ///
  /// In en, this message translates to:
  /// **'Please join the google meet link below to answer your questions with the instructor'**
  String get joinGGMeet;

  /// No description provided for @reivew.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get reivew;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @subjectQuestion.
  ///
  /// In en, this message translates to:
  /// **'Subject: '**
  String get subjectQuestion;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price: '**
  String get price;

  /// No description provided for @systemFindIntructor.
  ///
  /// In en, this message translates to:
  /// **'The system automatically finds instructors'**
  String get systemFindIntructor;

  /// No description provided for @find.
  ///
  /// In en, this message translates to:
  /// **'Find'**
  String get find;

  /// No description provided for @suggestedInstructor.
  ///
  /// In en, this message translates to:
  /// **'Suggested instructor'**
  String get suggestedInstructor;

  /// No description provided for @systemFindSuitableIntuctor.
  ///
  /// In en, this message translates to:
  /// **'The system is looking for a suitable instructor for you'**
  String get systemFindSuitableIntuctor;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait a moment'**
  String get pleaseWait;

  /// No description provided for @cancelFind.
  ///
  /// In en, this message translates to:
  /// **'Cancel finding'**
  String get cancelFind;

  /// No description provided for @intructor.
  ///
  /// In en, this message translates to:
  /// **'Intructor'**
  String get intructor;

  /// No description provided for @rejectAnswered.
  ///
  /// In en, this message translates to:
  /// **'The intructor rejected to answer your question'**
  String get rejectAnswered;

  /// No description provided for @personalInfomation.
  ///
  /// In en, this message translates to:
  /// **'Personal infomation'**
  String get personalInfomation;

  /// No description provided for @reportIntructor.
  ///
  /// In en, this message translates to:
  /// **'Report intructor'**
  String get reportIntructor;

  /// No description provided for @reportContent.
  ///
  /// In en, this message translates to:
  /// **'Report content'**
  String get reportContent;

  /// No description provided for @reportFile.
  ///
  /// In en, this message translates to:
  /// **'Report file'**
  String get reportFile;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accpet'**
  String get accept;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @errMess400002.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get errMess400002;

  /// No description provided for @errMess400003.
  ///
  /// In en, this message translates to:
  /// **'This question has been rated'**
  String get errMess400003;

  /// No description provided for @errMess400004.
  ///
  /// In en, this message translates to:
  /// **'This question has been answered'**
  String get errMess400004;

  /// No description provided for @errMess400005.
  ///
  /// In en, this message translates to:
  /// **'Voucher is invalid'**
  String get errMess400005;

  /// No description provided for @errMess400006.
  ///
  /// In en, this message translates to:
  /// **'Invalid question status'**
  String get errMess400006;

  /// No description provided for @errMess401.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized'**
  String get errMess401;

  /// No description provided for @errMess400001.
  ///
  /// In en, this message translates to:
  /// **'Tutor must be approved before updating education interest'**
  String get errMess400001;

  /// No description provided for @errMess401001.
  ///
  /// In en, this message translates to:
  /// **'refresh token is used or not exist'**
  String get errMess401001;

  /// No description provided for @errMess401002.
  ///
  /// In en, this message translates to:
  /// **'refreshToken is required'**
  String get errMess401002;

  /// No description provided for @errMess401003.
  ///
  /// In en, this message translates to:
  /// **'accessToken is required'**
  String get errMess401003;

  /// No description provided for @errMess401004.
  ///
  /// In en, this message translates to:
  /// **'accessToken verify failed'**
  String get errMess401004;

  /// No description provided for @errMess401005.
  ///
  /// In en, this message translates to:
  /// **'Email or password is incorrect'**
  String get errMess401005;

  /// No description provided for @errMess401006.
  ///
  /// In en, this message translates to:
  /// **'Password is incorrect'**
  String get errMess401006;

  /// No description provided for @errMess404001.
  ///
  /// In en, this message translates to:
  /// **'User not found'**
  String get errMess404001;

  /// No description provided for @errMess404002.
  ///
  /// In en, this message translates to:
  /// **'List room not found'**
  String get errMess404002;

  /// No description provided for @errMess404003.
  ///
  /// In en, this message translates to:
  /// **'Subject not found'**
  String get errMess404003;

  /// No description provided for @errMess404004.
  ///
  /// In en, this message translates to:
  /// **'Question not found'**
  String get errMess404004;

  /// No description provided for @errMess404005.
  ///
  /// In en, this message translates to:
  /// **'Room not found'**
  String get errMess404005;

  /// No description provided for @errMess404006.
  ///
  /// In en, this message translates to:
  /// **'Ggmeet Session not found'**
  String get errMess404006;

  /// No description provided for @errMess404007.
  ///
  /// In en, this message translates to:
  /// **'Question Level not found'**
  String get errMess404007;

  /// No description provided for @errMess404008.
  ///
  /// In en, this message translates to:
  /// **'Student not found'**
  String get errMess404008;

  /// No description provided for @errMess404009.
  ///
  /// In en, this message translates to:
  /// **'Tutor not found'**
  String get errMess404009;

  /// No description provided for @errMess403001.
  ///
  /// In en, this message translates to:
  /// **'You are not authorized to perform this action'**
  String get errMess403001;

  /// No description provided for @errMess403002.
  ///
  /// In en, this message translates to:
  /// **'You are not allowed to access this question'**
  String get errMess403002;

  /// No description provided for @errMess403003.
  ///
  /// In en, this message translates to:
  /// **'Account is inactive'**
  String get errMess403003;

  /// No description provided for @errMess409001.
  ///
  /// In en, this message translates to:
  /// **'This question has been reported'**
  String get errMess409001;

  /// No description provided for @errMess409002.
  ///
  /// In en, this message translates to:
  /// **'This question has been paid'**
  String get errMess409002;

  /// No description provided for @errMess500.
  ///
  /// In en, this message translates to:
  /// **'Internal server error'**
  String get errMess500;

  /// No description provided for @pickFile.
  ///
  /// In en, this message translates to:
  /// **'Pick files'**
  String get pickFile;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily (1 day)'**
  String get daily;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly (7 day)'**
  String get weekly;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **' Monthly (30 day)'**
  String get monthly;

  /// No description provided for @yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly (365 day)'**
  String get yearly;

  /// No description provided for @membershipPayAI.
  ///
  /// In en, this message translates to:
  /// **'AI system membership'**
  String get membershipPayAI;

  /// No description provided for @reportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your report is sent successfuly'**
  String get reportSuccess;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @selectTutorSuccess.
  ///
  /// In en, this message translates to:
  /// **'Selected Intructor successfully'**
  String get selectTutorSuccess;

  /// No description provided for @intructorSelectQuestion.
  ///
  /// In en, this message translates to:
  /// **'Intructor {intructor} you chose that accepted question with title is {question} with price {price}'**
  String intructorSelectQuestion(String intructor, String question, String price);

  /// No description provided for @editProfileSuccess.
  ///
  /// In en, this message translates to:
  /// **'Edit profile successfully'**
  String get editProfileSuccess;

  /// No description provided for @wattingIntructorAccepted.
  ///
  /// In en, this message translates to:
  /// **'You are watting for intructor to accept your question'**
  String get wattingIntructorAccepted;

  /// No description provided for @chooseIntructorToAnswer.
  ///
  /// In en, this message translates to:
  /// **'Do you want to choose {name} to answer your question'**
  String chooseIntructorToAnswer(String name);

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @chooseIntructor.
  ///
  /// In en, this message translates to:
  /// **'Choose intructor'**
  String get chooseIntructor;

  /// No description provided for @rejectToAnswer.
  ///
  /// In en, this message translates to:
  /// **'{name} reject to answer your question'**
  String rejectToAnswer(String name);

  /// No description provided for @wattingAccepted.
  ///
  /// In en, this message translates to:
  /// **'Please wait for {name} to accept'**
  String wattingAccepted(String name);

  /// No description provided for @numStart.
  ///
  /// In en, this message translates to:
  /// **'{star} star'**
  String numStart(String star);

  /// No description provided for @loadScreen.
  ///
  /// In en, this message translates to:
  /// **'If you play successfully, please load screen'**
  String get loadScreen;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return SEn();
    case 'vi': return SVi();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
