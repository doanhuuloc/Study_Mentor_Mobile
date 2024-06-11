import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_zh.dart';

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
  S(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('ko'),
    Locale('zh')
  ];

  /// No description provided for @home.
  ///
  /// In ko, this message translates to:
  /// **'홈'**
  String get home;

  /// No description provided for @community.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티'**
  String get community;

  /// No description provided for @forum.
  ///
  /// In ko, this message translates to:
  /// **'게시판'**
  String get forum;

  /// No description provided for @store.
  ///
  /// In ko, this message translates to:
  /// **'스토어'**
  String get store;

  /// No description provided for @profile.
  ///
  /// In ko, this message translates to:
  /// **'마이페이지'**
  String get profile;

  /// No description provided for @profileNavText.
  ///
  /// In ko, this message translates to:
  /// **'MY'**
  String get profileNavText;

  /// No description provided for @news.
  ///
  /// In ko, this message translates to:
  /// **'NEWS'**
  String get news;

  /// No description provided for @fullMenu.
  ///
  /// In ko, this message translates to:
  /// **'전체메뉴'**
  String get fullMenu;

  /// No description provided for @bestReview.
  ///
  /// In ko, this message translates to:
  /// **'Best Review'**
  String get bestReview;

  /// No description provided for @pressAgainToCloseApp.
  ///
  /// In ko, this message translates to:
  /// **'앱을 닫으려면 다시 누르세요.'**
  String get pressAgainToCloseApp;

  /// No description provided for @seeAll.
  ///
  /// In ko, this message translates to:
  /// **'전체보기'**
  String get seeAll;

  /// No description provided for @onlineMagazine.
  ///
  /// In ko, this message translates to:
  /// **'ONLINE MAGAZINE'**
  String get onlineMagazine;

  /// No description provided for @sgmNews.
  ///
  /// In ko, this message translates to:
  /// **'SGM NEWS'**
  String get sgmNews;

  /// No description provided for @sungongMuseum.
  ///
  /// In ko, this message translates to:
  /// **'SUNGONG MUSEUM'**
  String get sungongMuseum;

  /// No description provided for @communityCategory.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티 카테고리'**
  String get communityCategory;

  /// No description provided for @bulletBoardCategory.
  ///
  /// In ko, this message translates to:
  /// **'게시판 카테고리'**
  String get bulletBoardCategory;

  /// No description provided for @storeCategory.
  ///
  /// In ko, this message translates to:
  /// **'스토어 카테고리'**
  String get storeCategory;

  /// No description provided for @sungongMuseumKo.
  ///
  /// In ko, this message translates to:
  /// **'성공뮤지엄'**
  String get sungongMuseumKo;

  /// No description provided for @category.
  ///
  /// In ko, this message translates to:
  /// **'카테고리'**
  String get category;

  /// No description provided for @latest.
  ///
  /// In ko, this message translates to:
  /// **'최신순'**
  String get latest;

  /// No description provided for @popular.
  ///
  /// In ko, this message translates to:
  /// **'인기순'**
  String get popular;

  /// No description provided for @recommended.
  ///
  /// In ko, this message translates to:
  /// **'추천순'**
  String get recommended;

  /// No description provided for @compose.
  ///
  /// In ko, this message translates to:
  /// **'글쓰기'**
  String get compose;

  /// No description provided for @bestContents.
  ///
  /// In ko, this message translates to:
  /// **'Best Contents'**
  String get bestContents;

  /// No description provided for @onlineMagazineKo.
  ///
  /// In ko, this message translates to:
  /// **'온라인 매거진'**
  String get onlineMagazineKo;

  /// No description provided for @bestReviewLower.
  ///
  /// In ko, this message translates to:
  /// **'Best Review'**
  String get bestReviewLower;

  /// No description provided for @selfEmployment.
  ///
  /// In ko, this message translates to:
  /// **'자영업'**
  String get selfEmployment;

  /// No description provided for @sales.
  ///
  /// In ko, this message translates to:
  /// **'영업'**
  String get sales;

  /// No description provided for @houseWife.
  ///
  /// In ko, this message translates to:
  /// **'주부'**
  String get houseWife;

  /// No description provided for @officeWorkers.
  ///
  /// In ko, this message translates to:
  /// **'직장인'**
  String get officeWorkers;

  /// No description provided for @inseldeomBusiness.
  ///
  /// In ko, this message translates to:
  /// **'인셀덤 사업'**
  String get inseldeomBusiness;

  /// No description provided for @allPosts.
  ///
  /// In ko, this message translates to:
  /// **'전체글'**
  String get allPosts;

  /// No description provided for @favoritePosts.
  ///
  /// In ko, this message translates to:
  /// **'즐겨찾기'**
  String get favoritePosts;

  /// No description provided for @popularPosts.
  ///
  /// In ko, this message translates to:
  /// **'인기순'**
  String get popularPosts;

  /// No description provided for @curator.
  ///
  /// In ko, this message translates to:
  /// **'큐레이션'**
  String get curator;

  /// No description provided for @unit.
  ///
  /// In ko, this message translates to:
  /// **'원'**
  String get unit;

  /// No description provided for @commonCurrencyFormat.
  ///
  /// In ko, this message translates to:
  /// **'{value}원'**
  String commonCurrencyFormat(double value);

  /// No description provided for @easyLoginSNS.
  ///
  /// In ko, this message translates to:
  /// **'SNS 간편 로그인'**
  String get easyLoginSNS;

  /// No description provided for @signIn.
  ///
  /// In ko, this message translates to:
  /// **'로그인'**
  String get signIn;

  /// No description provided for @register.
  ///
  /// In ko, this message translates to:
  /// **'회원가입'**
  String get register;

  /// No description provided for @findId.
  ///
  /// In ko, this message translates to:
  /// **'아이디 찾기'**
  String get findId;

  /// No description provided for @findPassword.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 찾기'**
  String get findPassword;

  /// No description provided for @password.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호'**
  String get password;

  /// No description provided for @username.
  ///
  /// In ko, this message translates to:
  /// **'아이디'**
  String get username;

  /// No description provided for @minutesAgo.
  ///
  /// In ko, this message translates to:
  /// **'{time}분 전'**
  String minutesAgo(String time);

  /// No description provided for @hoursAgo.
  ///
  /// In ko, this message translates to:
  /// **'{time}시간 전'**
  String hoursAgo(String time);

  /// No description provided for @totalItems.
  ///
  /// In ko, this message translates to:
  /// **'총 {totalItems}개'**
  String totalItems(int totalItems);

  /// No description provided for @notificationAlert.
  ///
  /// In ko, this message translates to:
  /// **'공고'**
  String get notificationAlert;

  /// No description provided for @ok.
  ///
  /// In ko, this message translates to:
  /// **'좋아요'**
  String get ok;

  /// No description provided for @comment.
  ///
  /// In ko, this message translates to:
  /// **'댓글'**
  String get comment;

  /// No description provided for @viewProfile.
  ///
  /// In ko, this message translates to:
  /// **'프로필 보기'**
  String get viewProfile;

  /// No description provided for @writer.
  ///
  /// In ko, this message translates to:
  /// **'작성자'**
  String get writer;

  /// No description provided for @writeReply.
  ///
  /// In ko, this message translates to:
  /// **'답글쓰기'**
  String get writeReply;

  /// No description provided for @great.
  ///
  /// In ko, this message translates to:
  /// **'좋아요'**
  String get great;

  /// No description provided for @joinMemberShip.
  ///
  /// In ko, this message translates to:
  /// **'회원가입'**
  String get joinMemberShip;

  /// No description provided for @placeHolderId.
  ///
  /// In ko, this message translates to:
  /// **'아이디'**
  String get placeHolderId;

  /// No description provided for @validationId.
  ///
  /// In ko, this message translates to:
  /// **'영문, 숫자 조합 8자 이내'**
  String get validationId;

  /// No description provided for @placeHolderPassword.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호'**
  String get placeHolderPassword;

  /// No description provided for @validationPassword.
  ///
  /// In ko, this message translates to:
  /// **'영문, 숫자, 특수문자를 포함한 8-16자 조합'**
  String get validationPassword;

  /// No description provided for @doubleCheck.
  ///
  /// In ko, this message translates to:
  /// **'중복확인'**
  String get doubleCheck;

  /// No description provided for @placeHolderConfirmPassword.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 확인'**
  String get placeHolderConfirmPassword;

  /// No description provided for @placeHolderName.
  ///
  /// In ko, this message translates to:
  /// **'이름'**
  String get placeHolderName;

  /// No description provided for @placeHolderPhone.
  ///
  /// In ko, this message translates to:
  /// **'전화번호'**
  String get placeHolderPhone;

  /// No description provided for @sendAuthentication.
  ///
  /// In ko, this message translates to:
  /// **'인증번호 전송'**
  String get sendAuthentication;

  /// No description provided for @otpNumber.
  ///
  /// In ko, this message translates to:
  /// **'인증번호'**
  String get otpNumber;

  /// No description provided for @verify.
  ///
  /// In ko, this message translates to:
  /// **'인증하기'**
  String get verify;

  /// No description provided for @placeHolderReferrerPhoneNumber.
  ///
  /// In ko, this message translates to:
  /// **'추천인 전화번호 (선택사항)'**
  String get placeHolderReferrerPhoneNumber;

  /// No description provided for @usernameExisted.
  ///
  /// In ko, this message translates to:
  /// **'이 사용자 이름은 존재합니다.'**
  String get usernameExisted;

  /// No description provided for @phoneNumberExisted.
  ///
  /// In ko, this message translates to:
  /// **'이 전화번호는 이미 사용 중입니다.'**
  String get phoneNumberExisted;

  /// No description provided for @verifyOTPSuccess.
  ///
  /// In ko, this message translates to:
  /// **'OTP 인증 성공'**
  String get verifyOTPSuccess;

  /// No description provided for @empty.
  ///
  /// In ko, this message translates to:
  /// **'이 필드는 비워둘 수 없습니다.'**
  String get empty;

  /// No description provided for @usernameInvalid.
  ///
  /// In ko, this message translates to:
  /// **'영문과 숫자의 조합 6자 이상'**
  String get usernameInvalid;

  /// No description provided for @passwordInvalid.
  ///
  /// In ko, this message translates to:
  /// **'영문, 숫자, 특수문자를 포함하여 8자 이상 조합'**
  String get passwordInvalid;

  /// No description provided for @confirmPasswordNotMatch.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호가 일치하지 않습니다'**
  String get confirmPasswordNotMatch;

  /// No description provided for @phoneInvalid.
  ///
  /// In ko, this message translates to:
  /// **'전화번호 형식이 잘못되었습니다.'**
  String get phoneInvalid;

  /// No description provided for @otpInvalid.
  ///
  /// In ko, this message translates to:
  /// **'6개 숫자 가능'**
  String get otpInvalid;

  /// No description provided for @phoneNumberNotExisted.
  ///
  /// In ko, this message translates to:
  /// **'이 전화번호는 애플리케이션에 존재하지 않습니다.'**
  String get phoneNumberNotExisted;

  /// No description provided for @usernameOfPhoneNumber.
  ///
  /// In ko, this message translates to:
  /// **'{phoneNumber}님의 아이디는'**
  String usernameOfPhoneNumber(String phoneNumber);

  /// No description provided for @couldNotLunch.
  ///
  /// In ko, this message translates to:
  /// **'점심을 못 먹었어요 {content}'**
  String couldNotLunch(String content);

  /// No description provided for @id.
  ///
  /// In ko, this message translates to:
  /// **'입니다'**
  String get id;

  /// No description provided for @resetPassword.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 재설정'**
  String get resetPassword;

  /// No description provided for @verifyAccountFailed.
  ///
  /// In ko, this message translates to:
  /// **'사용자 이름이 전화번호와 일치하지 않습니다'**
  String get verifyAccountFailed;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In ko, this message translates to:
  /// **'재설정할 비밀번호를 입력해 주세요.'**
  String get pleaseEnterPassword;

  /// No description provided for @passwordCondition.
  ///
  /// In ko, this message translates to:
  /// **'(영문, 숫자, 특수문자를 포함하여 8자 이상 조합)'**
  String get passwordCondition;

  /// No description provided for @button.
  ///
  /// In ko, this message translates to:
  /// **'버튼'**
  String get button;

  /// No description provided for @resetPasswordSuccess.
  ///
  /// In ko, this message translates to:
  /// **'{phoneNumber}님의 비밀번호가\n재설정 되었습니다.'**
  String resetPasswordSuccess(Object phoneNumber);

  /// No description provided for @productInformation.
  ///
  /// In ko, this message translates to:
  /// **'제품 정보'**
  String get productInformation;

  /// No description provided for @review.
  ///
  /// In ko, this message translates to:
  /// **'후기'**
  String get review;

  /// No description provided for @inquiry.
  ///
  /// In ko, this message translates to:
  /// **'문의'**
  String get inquiry;

  /// No description provided for @purchaseReview.
  ///
  /// In ko, this message translates to:
  /// **'구매후기'**
  String get purchaseReview;

  /// No description provided for @writeReview.
  ///
  /// In ko, this message translates to:
  /// **'후기 작성'**
  String get writeReview;

  /// No description provided for @shoppingCart.
  ///
  /// In ko, this message translates to:
  /// **'장바구니'**
  String get shoppingCart;

  /// No description provided for @buyNow.
  ///
  /// In ko, this message translates to:
  /// **'바로 구매하기'**
  String get buyNow;

  /// No description provided for @temporaryStorage.
  ///
  /// In ko, this message translates to:
  /// **'임시저장'**
  String get temporaryStorage;

  /// No description provided for @registration.
  ///
  /// In ko, this message translates to:
  /// **'등록'**
  String get registration;

  /// No description provided for @pleaseChooseCategory.
  ///
  /// In ko, this message translates to:
  /// **'카테고리를 선택해주세요.'**
  String get pleaseChooseCategory;

  /// No description provided for @pleaseSelectSubCategory.
  ///
  /// In ko, this message translates to:
  /// **'분류를 선택해주세요.'**
  String get pleaseSelectSubCategory;

  /// No description provided for @pleaseEnterSubject.
  ///
  /// In ko, this message translates to:
  /// **'제목을 입력해주세요.'**
  String get pleaseEnterSubject;

  /// No description provided for @pleaseEnterYourDetails.
  ///
  /// In ko, this message translates to:
  /// **'내용을 입력해주세요.'**
  String get pleaseEnterYourDetails;

  /// No description provided for @editPhoto.
  ///
  /// In ko, this message translates to:
  /// **'사진 편집'**
  String get editPhoto;

  /// No description provided for @notification.
  ///
  /// In ko, this message translates to:
  /// **'알림'**
  String get notification;

  /// No description provided for @writeQA.
  ///
  /// In ko, this message translates to:
  /// **'문의 작성'**
  String get writeQA;

  /// No description provided for @qaCompleted.
  ///
  /// In ko, this message translates to:
  /// **'답변 완료'**
  String get qaCompleted;

  /// No description provided for @qaHidden.
  ///
  /// In ko, this message translates to:
  /// **'비밀글 입니다.'**
  String get qaHidden;

  /// No description provided for @sendWrittenReview.
  ///
  /// In ko, this message translates to:
  /// **'후기 작성하기'**
  String get sendWrittenReview;

  /// No description provided for @productRating.
  ///
  /// In ko, this message translates to:
  /// **'상품 별점'**
  String get productRating;

  /// No description provided for @uploadImage.
  ///
  /// In ko, this message translates to:
  /// **'사진 업로드'**
  String get uploadImage;

  /// No description provided for @writeReviewTextBoxTitle.
  ///
  /// In ko, this message translates to:
  /// **'리뷰 작성'**
  String get writeReviewTextBoxTitle;

  /// No description provided for @writeReviewHintText.
  ///
  /// In ko, this message translates to:
  /// **'상품의 후기를 알려주세요'**
  String get writeReviewHintText;

  /// No description provided for @takePicture.
  ///
  /// In ko, this message translates to:
  /// **'사진촬영'**
  String get takePicture;

  /// No description provided for @pickFromGallery.
  ///
  /// In ko, this message translates to:
  /// **'갤러리에서 사진 선택'**
  String get pickFromGallery;

  /// No description provided for @deletePicture.
  ///
  /// In ko, this message translates to:
  /// **'사진 삭제하기'**
  String get deletePicture;

  /// No description provided for @cancel.
  ///
  /// In ko, this message translates to:
  /// **'취소'**
  String get cancel;

  /// No description provided for @composeQA.
  ///
  /// In ko, this message translates to:
  /// **'상품 문의'**
  String get composeQA;

  /// No description provided for @submitQA.
  ///
  /// In ko, this message translates to:
  /// **'문의하기'**
  String get submitQA;

  /// No description provided for @qaCategoryType.
  ///
  /// In ko, this message translates to:
  /// **'문의 유형'**
  String get qaCategoryType;

  /// No description provided for @qaCategoryTypePlaceHolder.
  ///
  /// In ko, this message translates to:
  /// **'선택'**
  String get qaCategoryTypePlaceHolder;

  /// No description provided for @qaDetails.
  ///
  /// In ko, this message translates to:
  /// **'문의 내용'**
  String get qaDetails;

  /// No description provided for @qaDetailsHintText.
  ///
  /// In ko, this message translates to:
  /// **'문의 내용을 입력하세요'**
  String get qaDetailsHintText;

  /// No description provided for @favoriteBoard.
  ///
  /// In ko, this message translates to:
  /// **'즐겨찾기 게시판'**
  String get favoriteBoard;

  /// No description provided for @follower.
  ///
  /// In ko, this message translates to:
  /// **'팔로워'**
  String get follower;

  /// No description provided for @delete.
  ///
  /// In ko, this message translates to:
  /// **'삭제'**
  String get delete;

  /// No description provided for @followManage.
  ///
  /// In ko, this message translates to:
  /// **'팔로우 관리'**
  String get followManage;

  /// No description provided for @referrerStatus.
  ///
  /// In ko, this message translates to:
  /// **'추천인 현황'**
  String get referrerStatus;

  /// No description provided for @currentReferrer.
  ///
  /// In ko, this message translates to:
  /// **'현재 추천인 수'**
  String get currentReferrer;

  /// No description provided for @numberPeople.
  ///
  /// In ko, this message translates to:
  /// **'{number}명'**
  String numberPeople(Object number);

  /// No description provided for @currentReferrerList.
  ///
  /// In ko, this message translates to:
  /// **'현재 추천인 리스트'**
  String get currentReferrerList;

  /// No description provided for @next.
  ///
  /// In ko, this message translates to:
  /// **'다음'**
  String get next;

  /// No description provided for @personalInfoTermAccept.
  ///
  /// In ko, this message translates to:
  /// **'(필수) 개인정보 처리방침 동의'**
  String get personalInfoTermAccept;

  /// No description provided for @smTermAccept.
  ///
  /// In ko, this message translates to:
  /// **'(필수) 성공매니아몰 이용약관 동의'**
  String get smTermAccept;

  /// No description provided for @view.
  ///
  /// In ko, this message translates to:
  /// **'보기'**
  String get view;

  /// No description provided for @agreeToTermAndCond.
  ///
  /// In ko, this message translates to:
  /// **'약관 동의'**
  String get agreeToTermAndCond;

  /// No description provided for @successSecretOfTop1.
  ///
  /// In ko, this message translates to:
  /// **'상위 1% 사업가들이 알려주는\n성공 비밀'**
  String get successSecretOfTop1;

  /// No description provided for @termAndCondDetails.
  ///
  /// In ko, this message translates to:
  /// **'이용정책 및 약관'**
  String get termAndCondDetails;

  /// No description provided for @cartItemAmount.
  ///
  /// In ko, this message translates to:
  /// **'총 {amount}개'**
  String cartItemAmount(int amount);

  /// No description provided for @selectAll.
  ///
  /// In ko, this message translates to:
  /// **'전체선택'**
  String get selectAll;

  /// No description provided for @editBusinessCard.
  ///
  /// In ko, this message translates to:
  /// **'명함 수정하기'**
  String get editBusinessCard;

  /// No description provided for @businessCardDetails.
  ///
  /// In ko, this message translates to:
  /// **'명함 자세히 보기'**
  String get businessCardDetails;

  /// No description provided for @activity.
  ///
  /// In ko, this message translates to:
  /// **'활동'**
  String get activity;

  /// No description provided for @followManagement.
  ///
  /// In ko, this message translates to:
  /// **'팔로우 관리'**
  String get followManagement;

  /// No description provided for @favoritesBulletinBoard.
  ///
  /// In ko, this message translates to:
  /// **'즐겨찾기 게시판'**
  String get favoritesBulletinBoard;

  /// No description provided for @curationActivities.
  ///
  /// In ko, this message translates to:
  /// **'큐레이션 활동'**
  String get curationActivities;

  /// No description provided for @communityActivities.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티 활동'**
  String get communityActivities;

  /// No description provided for @myDeliveryInformation.
  ///
  /// In ko, this message translates to:
  /// **'나의 배송정보'**
  String get myDeliveryInformation;

  /// No description provided for @checkOrderDeliveryDetails.
  ///
  /// In ko, this message translates to:
  /// **'주문배송내역 조회'**
  String get checkOrderDeliveryDetails;

  /// No description provided for @inquiryDetails.
  ///
  /// In ko, this message translates to:
  /// **'문의내역'**
  String get inquiryDetails;

  /// No description provided for @etc.
  ///
  /// In ko, this message translates to:
  /// **'기타'**
  String get etc;

  /// No description provided for @recommenderStatus.
  ///
  /// In ko, this message translates to:
  /// **'추천인 현황'**
  String get recommenderStatus;

  /// No description provided for @entire.
  ///
  /// In ko, this message translates to:
  /// **'전체'**
  String get entire;

  /// No description provided for @beforeDelivery.
  ///
  /// In ko, this message translates to:
  /// **'배송전'**
  String get beforeDelivery;

  /// No description provided for @shipping.
  ///
  /// In ko, this message translates to:
  /// **'배송중'**
  String get shipping;

  /// No description provided for @deliveryComplete.
  ///
  /// In ko, this message translates to:
  /// **'배송완료'**
  String get deliveryComplete;

  /// No description provided for @refund.
  ///
  /// In ko, this message translates to:
  /// **'환불'**
  String get refund;

  /// No description provided for @exchange.
  ///
  /// In ko, this message translates to:
  /// **'교환'**
  String get exchange;

  /// No description provided for @deliveryInquiry.
  ///
  /// In ko, this message translates to:
  /// **'배송조회'**
  String get deliveryInquiry;

  /// No description provided for @orderDetails.
  ///
  /// In ko, this message translates to:
  /// **'주문 상세보기'**
  String get orderDetails;

  /// No description provided for @numberProducts.
  ///
  /// In ko, this message translates to:
  /// **'{number}개'**
  String numberProducts(Object number);

  /// No description provided for @paymentInformation.
  ///
  /// In ko, this message translates to:
  /// **'결제 정보'**
  String get paymentInformation;

  /// No description provided for @totalProductAmount.
  ///
  /// In ko, this message translates to:
  /// **'총 상품금액'**
  String get totalProductAmount;

  /// No description provided for @deliveryFee.
  ///
  /// In ko, this message translates to:
  /// **'배송비'**
  String get deliveryFee;

  /// No description provided for @totalDiscountAmount.
  ///
  /// In ko, this message translates to:
  /// **'총 할인금액'**
  String get totalDiscountAmount;

  /// No description provided for @paymentAmount.
  ///
  /// In ko, this message translates to:
  /// **'결제금액'**
  String get paymentAmount;

  /// No description provided for @pointAccumulation.
  ///
  /// In ko, this message translates to:
  /// **'포인트 적립'**
  String get pointAccumulation;

  /// No description provided for @paymentReceipt.
  ///
  /// In ko, this message translates to:
  /// **'결제 영수증'**
  String get paymentReceipt;

  /// No description provided for @accumulationExpected.
  ///
  /// In ko, this message translates to:
  /// **'적립 예정'**
  String get accumulationExpected;

  /// No description provided for @ordererInformation.
  ///
  /// In ko, this message translates to:
  /// **'주문자 정보'**
  String get ordererInformation;

  /// No description provided for @phoneNumber.
  ///
  /// In ko, this message translates to:
  /// **'전화번호'**
  String get phoneNumber;

  /// No description provided for @email.
  ///
  /// In ko, this message translates to:
  /// **'이메일'**
  String get email;

  /// No description provided for @deliveryInformation.
  ///
  /// In ko, this message translates to:
  /// **'배송 정보'**
  String get deliveryInformation;

  /// No description provided for @orderPayment.
  ///
  /// In ko, this message translates to:
  /// **'주문 /  결제'**
  String get orderPayment;

  /// No description provided for @orderer.
  ///
  /// In ko, this message translates to:
  /// **'주문자'**
  String get orderer;

  /// No description provided for @changeAddress.
  ///
  /// In ko, this message translates to:
  /// **'배송지 변경'**
  String get changeAddress;

  /// No description provided for @defaultShippingAddress.
  ///
  /// In ko, this message translates to:
  /// **'기본배송지'**
  String get defaultShippingAddress;

  /// No description provided for @addShippingAddress.
  ///
  /// In ko, this message translates to:
  /// **'배송지 추가'**
  String get addShippingAddress;

  /// No description provided for @add.
  ///
  /// In ko, this message translates to:
  /// **'추가하기'**
  String get add;

  /// No description provided for @whatYouWrote.
  ///
  /// In ko, this message translates to:
  /// **'작성한 글'**
  String get whatYouWrote;

  /// No description provided for @postWithComment.
  ///
  /// In ko, this message translates to:
  /// **'댓글 작성한 글'**
  String get postWithComment;

  /// No description provided for @likedPost.
  ///
  /// In ko, this message translates to:
  /// **'좋아요한 글'**
  String get likedPost;

  /// No description provided for @justNow.
  ///
  /// In ko, this message translates to:
  /// **'방금'**
  String get justNow;

  /// No description provided for @noPost.
  ///
  /// In ko, this message translates to:
  /// **'게시물이 없습니다'**
  String get noPost;

  /// No description provided for @exploreOurCommunity.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티 둘러보기'**
  String get exploreOurCommunity;

  /// No description provided for @exploreCurator.
  ///
  /// In ko, this message translates to:
  /// **'큐레이션 둘러보기'**
  String get exploreCurator;

  /// No description provided for @myProfile.
  ///
  /// In ko, this message translates to:
  /// **'프로필'**
  String get myProfile;

  /// No description provided for @businessCardEdit.
  ///
  /// In ko, this message translates to:
  /// **'명함 수정'**
  String get businessCardEdit;

  /// No description provided for @basicInformation.
  ///
  /// In ko, this message translates to:
  /// **'기본정보'**
  String get basicInformation;

  /// No description provided for @socialMedia.
  ///
  /// In ko, this message translates to:
  /// **'소셜 미디어'**
  String get socialMedia;

  /// No description provided for @linkUrl.
  ///
  /// In ko, this message translates to:
  /// **'링크 URL'**
  String get linkUrl;

  /// No description provided for @snsSelect.
  ///
  /// In ko, this message translates to:
  /// **'SNS 선택'**
  String get snsSelect;

  /// No description provided for @addition.
  ///
  /// In ko, this message translates to:
  /// **'추가'**
  String get addition;

  /// No description provided for @fileAttach.
  ///
  /// In ko, this message translates to:
  /// **'파일첨부'**
  String get fileAttach;

  /// No description provided for @list.
  ///
  /// In ko, this message translates to:
  /// **'목록'**
  String get list;

  /// No description provided for @title.
  ///
  /// In ko, this message translates to:
  /// **'제목'**
  String get title;

  /// No description provided for @imageFile.
  ///
  /// In ko, this message translates to:
  /// **'이미지 파일'**
  String get imageFile;

  /// No description provided for @deletePhoto.
  ///
  /// In ko, this message translates to:
  /// **'사진 삭제하기'**
  String get deletePhoto;

  /// No description provided for @changePhoto.
  ///
  /// In ko, this message translates to:
  /// **'사진 변경'**
  String get changePhoto;

  /// No description provided for @follow.
  ///
  /// In ko, this message translates to:
  /// **'팔로우'**
  String get follow;

  /// No description provided for @following.
  ///
  /// In ko, this message translates to:
  /// **'팔로우 중'**
  String get following;

  /// No description provided for @setting.
  ///
  /// In ko, this message translates to:
  /// **'설정'**
  String get setting;

  /// No description provided for @accountInformationManagement.
  ///
  /// In ko, this message translates to:
  /// **'계정정보 관리'**
  String get accountInformationManagement;

  /// No description provided for @notificationSettings.
  ///
  /// In ko, this message translates to:
  /// **'알림 설정'**
  String get notificationSettings;

  /// No description provided for @languageSettings.
  ///
  /// In ko, this message translates to:
  /// **'언어 설정'**
  String get languageSettings;

  /// No description provided for @korean.
  ///
  /// In ko, this message translates to:
  /// **'한국어'**
  String get korean;

  /// No description provided for @usagePolicy.
  ///
  /// In ko, this message translates to:
  /// **'이용정책'**
  String get usagePolicy;

  /// No description provided for @logout.
  ///
  /// In ko, this message translates to:
  /// **'로그아웃'**
  String get logout;

  /// No description provided for @edit.
  ///
  /// In ko, this message translates to:
  /// **'편집'**
  String get edit;

  /// No description provided for @withdrawal.
  ///
  /// In ko, this message translates to:
  /// **'회원 탈퇴'**
  String get withdrawal;

  /// No description provided for @save.
  ///
  /// In ko, this message translates to:
  /// **'저장하기'**
  String get save;

  /// No description provided for @changePassword.
  ///
  /// In ko, this message translates to:
  /// **'비빌번호 변경'**
  String get changePassword;

  /// No description provided for @editCellPhoneNumber.
  ///
  /// In ko, this message translates to:
  /// **'핸드폰 번호 수정'**
  String get editCellPhoneNumber;

  /// No description provided for @followNewPostNotification.
  ///
  /// In ko, this message translates to:
  /// **'팔로우 새글 알람'**
  String get followNewPostNotification;

  /// No description provided for @commentAlert.
  ///
  /// In ko, this message translates to:
  /// **'댓글 알람'**
  String get commentAlert;

  /// No description provided for @likeAlert.
  ///
  /// In ko, this message translates to:
  /// **'좋아요 알람'**
  String get likeAlert;

  /// No description provided for @termAndPolicyConditions.
  ///
  /// In ko, this message translates to:
  /// **'이용정책 및 약관'**
  String get termAndPolicyConditions;

  /// No description provided for @currentPassword.
  ///
  /// In ko, this message translates to:
  /// **'현재 비밀번호'**
  String get currentPassword;

  /// No description provided for @passwordToChange.
  ///
  /// In ko, this message translates to:
  /// **'변경 할 비밀번호'**
  String get passwordToChange;

  /// No description provided for @change.
  ///
  /// In ko, this message translates to:
  /// **'변경하기'**
  String get change;

  /// No description provided for @changePhoneNumber.
  ///
  /// In ko, this message translates to:
  /// **'전화번호 변경'**
  String get changePhoneNumber;

  /// No description provided for @recentSearches.
  ///
  /// In ko, this message translates to:
  /// **'최근 검색어'**
  String get recentSearches;

  /// No description provided for @clearAllHistory.
  ///
  /// In ko, this message translates to:
  /// **'검색기록 전체 삭제'**
  String get clearAllHistory;

  /// No description provided for @someThingWentWrong.
  ///
  /// In ko, this message translates to:
  /// **'문제가 발생했습니다.'**
  String get someThingWentWrong;

  /// No description provided for @addThumbnail.
  ///
  /// In ko, this message translates to:
  /// **'썸네일 추가'**
  String get addThumbnail;

  /// No description provided for @selectLanguage.
  ///
  /// In ko, this message translates to:
  /// **'언어 선택'**
  String get selectLanguage;

  /// No description provided for @someError.
  ///
  /// In ko, this message translates to:
  /// **'오류가 발생했습니다.'**
  String get someError;

  /// No description provided for @general.
  ///
  /// In ko, this message translates to:
  /// **'일반'**
  String get general;

  /// No description provided for @product.
  ///
  /// In ko, this message translates to:
  /// **'상품'**
  String get product;

  /// No description provided for @quality.
  ///
  /// In ko, this message translates to:
  /// **'품질'**
  String get quality;

  /// No description provided for @warranty.
  ///
  /// In ko, this message translates to:
  /// **'보증'**
  String get warranty;

  /// No description provided for @loginAndSignUp.
  ///
  /// In ko, this message translates to:
  /// **'로그인 및 회원가입'**
  String get loginAndSignUp;

  /// No description provided for @youNeedToLoginToAccessThisContent.
  ///
  /// In ko, this message translates to:
  /// **'이 콘텐츠에 접근하려면 로그인이 필요합니다'**
  String get youNeedToLoginToAccessThisContent;

  /// No description provided for @goToLoginPage.
  ///
  /// In ko, this message translates to:
  /// **'로그인 페이지로 이동'**
  String get goToLoginPage;

  /// No description provided for @pleaseLoginToViewRegisteredInformation.
  ///
  /// In ko, this message translates to:
  /// **'이 기능은 로그인이 필요합니다. 로그인하시겠습니까?'**
  String get pleaseLoginToViewRegisteredInformation;

  /// No description provided for @alertProductAddedToCart.
  ///
  /// In ko, this message translates to:
  /// **'장바구니에 추가된 제품'**
  String get alertProductAddedToCart;

  /// No description provided for @orderProduct.
  ///
  /// In ko, this message translates to:
  /// **'주문상품'**
  String get orderProduct;

  /// No description provided for @addressSearch.
  ///
  /// In ko, this message translates to:
  /// **'주소 검색'**
  String get addressSearch;

  /// No description provided for @totalPrice.
  ///
  /// In ko, this message translates to:
  /// **'총 {totalProduct}개 {price}원'**
  String totalPrice(Object price, Object totalProduct);

  /// No description provided for @totalPriceWithoutNumber.
  ///
  /// In ko, this message translates to:
  /// **'{price}원 결제하기'**
  String totalPriceWithoutNumber(Object price);

  /// No description provided for @orderProductAgree.
  ///
  /// In ko, this message translates to:
  /// **'주문할 상품의 상품명, 상품가격, 배송 정보를 확인하였으며,구매에 동의합니다.'**
  String get orderProductAgree;

  /// No description provided for @addToCart.
  ///
  /// In ko, this message translates to:
  /// **'장바구니에 추가'**
  String get addToCart;

  /// No description provided for @leaveAComment.
  ///
  /// In ko, this message translates to:
  /// **'댓글 남기기'**
  String get leaveAComment;

  /// No description provided for @replyingTo.
  ///
  /// In ko, this message translates to:
  /// **'에 응답하다: '**
  String get replyingTo;

  /// No description provided for @editingComment.
  ///
  /// In ko, this message translates to:
  /// **'댓글 편집...'**
  String get editingComment;

  /// No description provided for @noFollowers.
  ///
  /// In ko, this message translates to:
  /// **'팔로어가 없습니다.'**
  String get noFollowers;

  /// No description provided for @noFollowings.
  ///
  /// In ko, this message translates to:
  /// **'다음이 없습니다.'**
  String get noFollowings;

  /// No description provided for @paymentFailedMessage.
  ///
  /// In ko, this message translates to:
  /// **'결제에 실패했습니다.\n다시 시도해 주세요.'**
  String get paymentFailedMessage;

  /// No description provided for @paymentSuccessMessage.
  ///
  /// In ko, this message translates to:
  /// **'결제가 완료되었습니다.\n 주문해주셔서 감사합니다..'**
  String get paymentSuccessMessage;

  /// No description provided for @apply.
  ///
  /// In ko, this message translates to:
  /// **'신청하기'**
  String get apply;

  /// No description provided for @noPostDisplayed.
  ///
  /// In ko, this message translates to:
  /// **'표시된 게시물이 없습니다.'**
  String get noPostDisplayed;

  /// No description provided for @urlInvalid.
  ///
  /// In ko, this message translates to:
  /// **'유효하지 않은 URL입니다.'**
  String get urlInvalid;

  /// No description provided for @copiedToClipboard.
  ///
  /// In ko, this message translates to:
  /// **'클립보드에 복사되었습니다.'**
  String get copiedToClipboard;

  /// No description provided for @invalidEmailFormat.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 이메일 형식'**
  String get invalidEmailFormat;

  /// No description provided for @areYouSureYouWantToUnregister.
  ///
  /// In ko, this message translates to:
  /// **'정말로 등록을 취소하시겠습니까?'**
  String get areYouSureYouWantToUnregister;

  /// No description provided for @areYouSureYouWantToDelete.
  ///
  /// In ko, this message translates to:
  /// **'정말로 삭제하시겠습니까?'**
  String get areYouSureYouWantToDelete;

  /// No description provided for @inquiryCategory.
  ///
  /// In ko, this message translates to:
  /// **'문의 구분'**
  String get inquiryCategory;

  /// No description provided for @answerComplete.
  ///
  /// In ko, this message translates to:
  /// **'답변완료'**
  String get answerComplete;

  /// No description provided for @emptyList.
  ///
  /// In ko, this message translates to:
  /// **'공허한'**
  String get emptyList;

  /// No description provided for @savePostSuccess.
  ///
  /// In ko, this message translates to:
  /// **'게시물이 저장되었습니다'**
  String get savePostSuccess;

  /// No description provided for @unconfirmed.
  ///
  /// In ko, this message translates to:
  /// **'확인되지 않은'**
  String get unconfirmed;

  /// No description provided for @confirmed.
  ///
  /// In ko, this message translates to:
  /// **'확인됨'**
  String get confirmed;

  /// No description provided for @delivered.
  ///
  /// In ko, this message translates to:
  /// **'배달됨'**
  String get delivered;

  /// No description provided for @informationSupplement.
  ///
  /// In ko, this message translates to:
  /// **'정보 보충'**
  String get informationSupplement;

  /// No description provided for @commentMyPost.
  ///
  /// In ko, this message translates to:
  /// **'논평'**
  String get commentMyPost;

  /// No description provided for @followingUploadPost.
  ///
  /// In ko, this message translates to:
  /// **'새 글'**
  String get followingUploadPost;

  /// No description provided for @reactMyPost.
  ///
  /// In ko, this message translates to:
  /// **'반작용'**
  String get reactMyPost;

  /// No description provided for @shareSuccessfully.
  ///
  /// In ko, this message translates to:
  /// **'성공적으로 공유되었습니다'**
  String get shareSuccessfully;

  /// No description provided for @daddrs1000.
  ///
  /// In ko, this message translates to:
  /// **'주소를 찾을 수 없습니다.'**
  String get daddrs1000;

  /// No description provided for @aa1000.
  ///
  /// In ko, this message translates to:
  /// **'사용자를 찾을 수 없습니다.'**
  String get aa1000;

  /// No description provided for @aa1001.
  ///
  /// In ko, this message translates to:
  /// **'접근이 거부되었습니다.'**
  String get aa1001;

  /// No description provided for @aa1002.
  ///
  /// In ko, this message translates to:
  /// **'액세스 토큰이 만료되었습니다.'**
  String get aa1002;

  /// No description provided for @aa1003.
  ///
  /// In ko, this message translates to:
  /// **'리프레시 토큰이 만료되었습니다.'**
  String get aa1003;

  /// No description provided for @aa1004.
  ///
  /// In ko, this message translates to:
  /// **'세션 토큰이 만료되었습니다.'**
  String get aa1004;

  /// No description provided for @aa1005.
  ///
  /// In ko, this message translates to:
  /// **'토큰이 유효하지 않습니다.'**
  String get aa1005;

  /// No description provided for @aa1006.
  ///
  /// In ko, this message translates to:
  /// **'Google ID 토큰이 유효하지 않습니다.'**
  String get aa1006;

  /// No description provided for @aa1007.
  ///
  /// In ko, this message translates to:
  /// **'OTP를 보낼 수 없습니다.'**
  String get aa1007;

  /// No description provided for @aa1008.
  ///
  /// In ko, this message translates to:
  /// **'OTP가 만료되었습니다.'**
  String get aa1008;

  /// No description provided for @aa1009.
  ///
  /// In ko, this message translates to:
  /// **'OTP가 일치하지 않습니다.'**
  String get aa1009;

  /// No description provided for @aa1010.
  ///
  /// In ko, this message translates to:
  /// **'이 사용자에게는 인증 방법이 지원되지 않습니다.'**
  String get aa1010;

  /// No description provided for @aa1011.
  ///
  /// In ko, this message translates to:
  /// **'Kakao 토큰이 유효하지 않습니다.'**
  String get aa1011;

  /// No description provided for @aa1012.
  ///
  /// In ko, this message translates to:
  /// **'Naver 토큰이 유효하지 않습니다.'**
  String get aa1012;

  /// No description provided for @a1001.
  ///
  /// In ko, this message translates to:
  /// **'내부 서버 오류'**
  String get a1001;

  /// No description provided for @a1002.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 요청 데이터'**
  String get a1002;

  /// No description provided for @a1003.
  ///
  /// In ko, this message translates to:
  /// **'지원되지 않는 요청 메서드'**
  String get a1003;

  /// No description provided for @dcrt1000.
  ///
  /// In ko, this message translates to:
  /// **'카트를 찾을 수 없습니다.'**
  String get dcrt1000;

  /// No description provided for @dcrt1001.
  ///
  /// In ko, this message translates to:
  /// **'제품 수량은 재고 수량보다 작거나 같아야 합니다.'**
  String get dcrt1001;

  /// No description provided for @dc1000.
  ///
  /// In ko, this message translates to:
  /// **'두 번째 깊이 카테고리의 하위 카테고리를 추가할 수 없습니다.'**
  String get dc1000;

  /// No description provided for @dc1001.
  ///
  /// In ko, this message translates to:
  /// **'카테고리에 하위 카테고리를 추가할 수 없습니다.'**
  String get dc1001;

  /// No description provided for @dc1002.
  ///
  /// In ko, this message translates to:
  /// **'카테고리 유형이 올바르지 않습니다.'**
  String get dc1002;

  /// No description provided for @dc1003.
  ///
  /// In ko, this message translates to:
  /// **'카테고리를 삭제할 수 없습니다.'**
  String get dc1003;

  /// No description provided for @dc1004.
  ///
  /// In ko, this message translates to:
  /// **'카테고리 이름을 변경할 수 없습니다.'**
  String get dc1004;

  /// No description provided for @dc1005.
  ///
  /// In ko, this message translates to:
  /// **'카테고리를 찾을 수 없습니다.'**
  String get dc1005;

  /// No description provided for @dcmt1000.
  ///
  /// In ko, this message translates to:
  /// **'댓글을 찾을 수 없습니다.'**
  String get dcmt1000;

  /// No description provided for @dcmt1001.
  ///
  /// In ko, this message translates to:
  /// **'상위 댓글을 찾을 수 없습니다.'**
  String get dcmt1001;

  /// No description provided for @dcmt1002.
  ///
  /// In ko, this message translates to:
  /// **'편집 권한이 없습니다.'**
  String get dcmt1002;

  /// No description provided for @dcmt1003.
  ///
  /// In ko, this message translates to:
  /// **'숨겨진 댓글에 답글을 달 수 없습니다.'**
  String get dcmt1003;

  /// No description provided for @dfvrcate1000.
  ///
  /// In ko, this message translates to:
  /// **'즐겨찾는 카테고리는 상위 카테고리만 허용됩니다.'**
  String get dfvrcate1000;

  /// No description provided for @af1000.
  ///
  /// In ko, this message translates to:
  /// **'업로드된 파일 이름이 유효하지 않습니다.'**
  String get af1000;

  /// No description provided for @af1001.
  ///
  /// In ko, this message translates to:
  /// **'지원되지 않는 파일 유형'**
  String get af1001;

  /// No description provided for @af1002.
  ///
  /// In ko, this message translates to:
  /// **'파일 구문 분석 오류'**
  String get af1002;

  /// No description provided for @dfile1000.
  ///
  /// In ko, this message translates to:
  /// **'파일을 찾을 수 없습니다.'**
  String get dfile1000;

  /// No description provided for @dfl1000.
  ///
  /// In ko, this message translates to:
  /// **'자신을 팔로우할 수 없습니다.'**
  String get dfl1000;

  /// No description provided for @dfl1001.
  ///
  /// In ko, this message translates to:
  /// **'자신을 언팔로우할 수 없습니다.'**
  String get dfl1001;

  /// No description provided for @dl1005.
  ///
  /// In ko, this message translates to:
  /// **'로케일이 지원되지 않습니다.'**
  String get dl1005;

  /// No description provided for @dmp1000.
  ///
  /// In ko, this message translates to:
  /// **'메인 페이지를 찾을 수 없습니다.'**
  String get dmp1000;

  /// No description provided for @dntf1000.
  ///
  /// In ko, this message translates to:
  /// **'알림을 찾을 수 없습니다.'**
  String get dntf1000;

  /// No description provided for @dntfs1000.
  ///
  /// In ko, this message translates to:
  /// **'알림 설정을 찾을 수 없습니다.'**
  String get dntfs1000;

  /// No description provided for @dordd1000.
  ///
  /// In ko, this message translates to:
  /// **'주문 세부 정보를 찾을 수 없습니다.'**
  String get dordd1000;

  /// No description provided for @aods1.
  ///
  /// In ko, this message translates to:
  /// **'주문 세부 세션을 찾을 수 없습니다.'**
  String get aods1;

  /// No description provided for @dord1000.
  ///
  /// In ko, this message translates to:
  /// **'주문 실패'**
  String get dord1000;

  /// No description provided for @dord1001.
  ///
  /// In ko, this message translates to:
  /// **'주문을 찾을 수 없습니다.'**
  String get dord1001;

  /// No description provided for @dord1002.
  ///
  /// In ko, this message translates to:
  /// **'이 주문은 이 사용자에게 속하지 않습니다.'**
  String get dord1002;

  /// No description provided for @dord1003.
  ///
  /// In ko, this message translates to:
  /// **'주문은 未確認 - 確認済み 상태에서만 취소할 수 있습니다.'**
  String get dord1003;

  /// No description provided for @dord1004.
  ///
  /// In ko, this message translates to:
  /// **'주문은 未確認 - 確認済み - 배달 중 상태에서만 취소할 수 있습니다.'**
  String get dord1004;

  /// No description provided for @dord1005.
  ///
  /// In ko, this message translates to:
  /// **'관리자만 주문 상태를 다음과 같이 변경할 수 있습니다: 未確認 -> 確認済み -> 배달 중 -> 配送済み'**
  String get dord1005;

  /// No description provided for @dord1006.
  ///
  /// In ko, this message translates to:
  /// **'관리자만 주문 상태를 다음과 같이 환불할 수 있습니다: 취소 -> 환불'**
  String get dord1006;

  /// No description provided for @dord1007.
  ///
  /// In ko, this message translates to:
  /// **'환불 실패'**
  String get dord1007;

  /// No description provided for @aos1.
  ///
  /// In ko, this message translates to:
  /// **'주문 세션을 찾을 수 없습니다.'**
  String get aos1;

  /// No description provided for @aos2.
  ///
  /// In ko, this message translates to:
  /// **'제품 수량은 재고 수량보다 작거나 같아야 합니다.'**
  String get aos2;

  /// No description provided for @dpst1000.
  ///
  /// In ko, this message translates to:
  /// **'게시물을 찾을 수 없습니다.'**
  String get dpst1000;

  /// No description provided for @dpst1001.
  ///
  /// In ko, this message translates to:
  /// **'게시물은 하위 카테고리만 허용됩니다.'**
  String get dpst1001;

  /// No description provided for @dpst1002.
  ///
  /// In ko, this message translates to:
  /// **'게시물은 상위 카테고리만 허용됩니다.'**
  String get dpst1002;

  /// No description provided for @dpst1003.
  ///
  /// In ko, this message translates to:
  /// **'게시물 카테고리가 일치하지 않습니다.'**
  String get dpst1003;

  /// No description provided for @dpst1004.
  ///
  /// In ko, this message translates to:
  /// **'게시물 상위 카테고리가 필요합니다.'**
  String get dpst1004;

  /// No description provided for @dprd1000.
  ///
  /// In ko, this message translates to:
  /// **'제품을 찾을 수 없습니다.'**
  String get dprd1000;

  /// No description provided for @dpu1000.
  ///
  /// In ko, this message translates to:
  /// **'프로필 URL을 찾을 수 없습니다.'**
  String get dpu1000;

  /// No description provided for @dqa1000.
  ///
  /// In ko, this message translates to:
  /// **'질문 및 답변을 찾을 수 없습니다.'**
  String get dqa1000;

  /// No description provided for @dqa1001.
  ///
  /// In ko, this message translates to:
  /// **'다른 사람의 QnA는 삭제할 수 없습니다.'**
  String get dqa1001;

  /// No description provided for @drt1000.
  ///
  /// In ko, this message translates to:
  /// **'평점을 찾을 수 없습니다.'**
  String get drt1000;

  /// No description provided for @drt1001.
  ///
  /// In ko, this message translates to:
  /// **'다른 사람의 리뷰는 삭제할 수 없습니다.'**
  String get drt1001;

  /// No description provided for @drct1000.
  ///
  /// In ko, this message translates to:
  /// **'반응을 찾을 수 없습니다.'**
  String get drct1000;

  /// No description provided for @dsf1000.
  ///
  /// In ko, this message translates to:
  /// **'배송료를 찾을 수 없습니다.'**
  String get dsf1000;

  /// No description provided for @dsm1000.
  ///
  /// In ko, this message translates to:
  /// **'소셜 미디어를 찾을 수 없습니다.'**
  String get dsm1000;

  /// No description provided for @au1000.
  ///
  /// In ko, this message translates to:
  /// **'사용자를 찾을 수 없습니다.'**
  String get au1000;

  /// No description provided for @du1001.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 이메일 형식'**
  String get du1001;

  /// No description provided for @du1002.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 전화 번호 형식'**
  String get du1002;

  /// No description provided for @du1003.
  ///
  /// In ko, this message translates to:
  /// **'사용자 유형은 비밀번호를 허용하지 않습니다.'**
  String get du1003;

  /// No description provided for @du1004.
  ///
  /// In ko, this message translates to:
  /// **'사용자가 이미 추천한 사용자가 있습니다.'**
  String get du1004;

  /// No description provided for @du1005.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 비밀번호'**
  String get du1005;

  /// No description provided for @du1006.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 비밀번호 형식'**
  String get du1006;

  /// No description provided for @du1007.
  ///
  /// In ko, this message translates to:
  /// **'잘못된 사용자 이름 형식'**
  String get du1007;

  /// No description provided for @du1008.
  ///
  /// In ko, this message translates to:
  /// **'중복된 사용자 이름'**
  String get du1008;

  /// No description provided for @du1009.
  ///
  /// In ko, this message translates to:
  /// **'중복된 이메일'**
  String get du1009;

  /// No description provided for @du1010.
  ///
  /// In ko, this message translates to:
  /// **'중복된 사용자 전화 번호'**
  String get du1010;

  /// No description provided for @du1011.
  ///
  /// In ko, this message translates to:
  /// **'소셜 사용자의 이메일을 변경할 수 없습니다.'**
  String get du1011;

  /// No description provided for @du1012.
  ///
  /// In ko, this message translates to:
  /// **'소셜 사용자의 전화 번호를 변경할 수 없습니다.'**
  String get du1012;

  /// No description provided for @du1013.
  ///
  /// In ko, this message translates to:
  /// **'사용자가 등록을 완료하지 않았습니다.'**
  String get du1013;

  /// No description provided for @du1014.
  ///
  /// In ko, this message translates to:
  /// **'사용자에게 정보 보충이 필요하지 않습니다.'**
  String get du1014;

  /// No description provided for @du1015.
  ///
  /// In ko, this message translates to:
  /// **'사용자 역할이 충분하지 않습니다.'**
  String get du1015;

  /// No description provided for @du1016.
  ///
  /// In ko, this message translates to:
  /// **'사용자를 찾을 수 없습니다.'**
  String get du1016;

  /// No description provided for @du1017.
  ///
  /// In ko, this message translates to:
  /// **'시스템 계정을 비활성화할 수 없습니다.'**
  String get du1017;

  /// No description provided for @sw101.
  ///
  /// In ko, this message translates to:
  /// **'발급된 고유키가 존재 하지 않음'**
  String get sw101;

  /// No description provided for @sw102.
  ///
  /// In ko, this message translates to:
  /// **'만료된 키'**
  String get sw102;

  /// No description provided for @sw103.
  ///
  /// In ko, this message translates to:
  /// **'키 사용량 초과'**
  String get sw103;

  /// No description provided for @sw104.
  ///
  /// In ko, this message translates to:
  /// **'유효하지 않은 운송장 번호 혹은 택배사 코드 입력'**
  String get sw104;

  /// No description provided for @sw105.
  ///
  /// In ko, this message translates to:
  /// **'동일한 운송장의 하루 요청 제한 건수 초과'**
  String get sw105;

  /// No description provided for @sw106.
  ///
  /// In ko, this message translates to:
  /// **'운송장 번호 조회 에러'**
  String get sw106;

  /// No description provided for @sw500.
  ///
  /// In ko, this message translates to:
  /// **'서버 에러 입니다'**
  String get sw500;

  /// No description provided for @connectionFailure.
  ///
  /// In ko, this message translates to:
  /// **'서버에 연결할 수 없습니다. 나중에 다시 시도해주세요.'**
  String get connectionFailure;

  /// No description provided for @timeoutFailure.
  ///
  /// In ko, this message translates to:
  /// **'요청 시간이 초과되었습니다.'**
  String get timeoutFailure;

  /// No description provided for @otherDioFailure.
  ///
  /// In ko, this message translates to:
  /// **'문제가 발생했습니다.'**
  String get otherDioFailure;

  /// No description provided for @convertDataFailure.
  ///
  /// In ko, this message translates to:
  /// **'데이터 변환 실패'**
  String get convertDataFailure;

  /// No description provided for @genericFailure.
  ///
  /// In ko, this message translates to:
  /// **'일반적인 실패'**
  String get genericFailure;

  /// No description provided for @persistentFailure.
  ///
  /// In ko, this message translates to:
  /// **'지속적인 실패'**
  String get persistentFailure;

  /// No description provided for @recipient.
  ///
  /// In ko, this message translates to:
  /// **'받는 사람'**
  String get recipient;

  /// No description provided for @address.
  ///
  /// In ko, this message translates to:
  /// **'주소'**
  String get address;

  /// No description provided for @checkAuthenticationNumber.
  ///
  /// In ko, this message translates to:
  /// **'인증번호 확인'**
  String get checkAuthenticationNumber;

  /// No description provided for @enterDetailedAddress.
  ///
  /// In ko, this message translates to:
  /// **'상세주소 입력'**
  String get enterDetailedAddress;

  /// No description provided for @setDefaultAddress.
  ///
  /// In ko, this message translates to:
  /// **'기본배송지 설정'**
  String get setDefaultAddress;

  /// No description provided for @longVideo.
  ///
  /// In ko, this message translates to:
  /// **'긴 영상'**
  String get longVideo;

  /// No description provided for @shortVideo.
  ///
  /// In ko, this message translates to:
  /// **'짧은 영상'**
  String get shortVideo;

  /// No description provided for @reaction.
  ///
  /// In ko, this message translates to:
  /// **'반응'**
  String get reaction;

  /// No description provided for @viewDetails.
  ///
  /// In ko, this message translates to:
  /// **'상세보기'**
  String get viewDetails;

  /// No description provided for @areYouSureYouWantToCancelThisOrder.
  ///
  /// In ko, this message translates to:
  /// **'정말 이 주문을 취소하시겠습니까?'**
  String get areYouSureYouWantToCancelThisOrder;

  /// No description provided for @deliveryStatus.
  ///
  /// In ko, this message translates to:
  /// **'배송 상태'**
  String get deliveryStatus;

  /// No description provided for @waybillNumber.
  ///
  /// In ko, this message translates to:
  /// **'운송장 번호'**
  String get waybillNumber;

  /// No description provided for @productAcceptance.
  ///
  /// In ko, this message translates to:
  /// **'상품인수'**
  String get productAcceptance;

  /// No description provided for @productInTransit.
  ///
  /// In ko, this message translates to:
  /// **'상품이동중'**
  String get productInTransit;

  /// No description provided for @deliveryArrived.
  ///
  /// In ko, this message translates to:
  /// **'배송지도착'**
  String get deliveryArrived;

  /// No description provided for @startDelivery.
  ///
  /// In ko, this message translates to:
  /// **'배송출발'**
  String get startDelivery;

  /// No description provided for @deliveryInformationHasNotBeenUpdated.
  ///
  /// In ko, this message translates to:
  /// **'배송정보가 업데이트되지 않았습니다. 나중에 다시 시도 해주십시오'**
  String get deliveryInformationHasNotBeenUpdated;

  /// No description provided for @dicountInvalid.
  ///
  /// In ko, this message translates to:
  /// **'할인 금액은 주문 금액의 30%를 초과할 수 없습니다.'**
  String get dicountInvalid;

  /// No description provided for @payment.
  ///
  /// In ko, this message translates to:
  /// **'지불'**
  String get payment;

  /// No description provided for @inquiryHistory.
  ///
  /// In ko, this message translates to:
  /// **'문의내역'**
  String get inquiryHistory;

  /// No description provided for @answeredInquiry.
  ///
  /// In ko, this message translates to:
  /// **'답변됨'**
  String get answeredInquiry;

  /// No description provided for @pending.
  ///
  /// In ko, this message translates to:
  /// **'보류 중'**
  String get pending;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja', 'ko', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return SEn();
    case 'ja':
      return SJa();
    case 'ko':
      return SKo();
    case 'zh':
      return SZh();
  }

  throw FlutterError(
      'S.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
