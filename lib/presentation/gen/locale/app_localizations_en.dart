import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get home => 'Home';

  @override
  String get community => 'Community';

  @override
  String get forum => 'Forum';

  @override
  String get store => 'Store';

  @override
  String get profile => 'My page';

  @override
  String get profileNavText => 'MY';

  @override
  String get news => 'News';

  @override
  String get fullMenu => 'Full menu';

  @override
  String get bestReview => 'Best review';

  @override
  String get pressAgainToCloseApp => 'Press again to close the app.';

  @override
  String get seeAll => 'See all';

  @override
  String get onlineMagazine => 'Online magazine';

  @override
  String get sgmNews => 'SGM news';

  @override
  String get sungongMuseum => 'Sungong museum';

  @override
  String get communityCategory => 'Community category';

  @override
  String get bulletBoardCategory => 'Bulletin board category';

  @override
  String get storeCategory => 'Store category';

  @override
  String get sungongMuseumKo => 'Sungong museum';

  @override
  String get category => 'Category';

  @override
  String get latest => 'Latest';

  @override
  String get popular => 'Popular';

  @override
  String get recommended => 'Recommended';

  @override
  String get compose => 'Compose';

  @override
  String get bestContents => 'Best contents';

  @override
  String get onlineMagazineKo => 'Online magazine';

  @override
  String get bestReviewLower => 'Best review';

  @override
  String get selfEmployment => 'Self-employment';

  @override
  String get sales => 'Sales';

  @override
  String get houseWife => 'Housewife';

  @override
  String get officeWorkers => 'Office workers';

  @override
  String get inseldeomBusiness => 'Inseldeom business';

  @override
  String get allPosts => 'All posts';

  @override
  String get favoritePosts => 'Favorite posts';

  @override
  String get popularPosts => 'Popular posts';

  @override
  String get curator => 'Curator';

  @override
  String get unit => 'Won';

  @override
  String commonCurrencyFormat(double value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return '$valueString won';
  }

  @override
  String get easyLoginSNS => 'Easy SNS login';

  @override
  String get signIn => 'Sign in';

  @override
  String get register => 'Register';

  @override
  String get findId => 'Find ID';

  @override
  String get findPassword => 'Find password';

  @override
  String get password => 'Password';

  @override
  String get username => 'Username';

  @override
  String minutesAgo(String time) {
    return '$time minutes ago';
  }

  @override
  String hoursAgo(String time) {
    return '$time hours ago';
  }

  @override
  String totalItems(int totalItems) {
    return 'Total $totalItems';
  }

  @override
  String get notificationAlert => 'Notification';

  @override
  String get ok => 'OK';

  @override
  String get comment => 'Comment';

  @override
  String get viewProfile => 'View profile';

  @override
  String get writer => 'Writer';

  @override
  String get writeReply => 'Write reply';

  @override
  String get great => 'Great';

  @override
  String get joinMemberShip => 'Join membership';

  @override
  String get placeHolderId => 'ID';

  @override
  String get validationId => 'Alphanumeric combination within 8 characters';

  @override
  String get placeHolderPassword => 'Password';

  @override
  String get validationPassword => 'Combination of alphanumeric and special characters, 8-16 characters';

  @override
  String get doubleCheck => 'Double check';

  @override
  String get placeHolderConfirmPassword => 'Confirm password';

  @override
  String get placeHolderName => 'Name';

  @override
  String get placeHolderPhone => 'Phone number';

  @override
  String get sendAuthentication => 'Send authentication';

  @override
  String get otpNumber => 'OTP number';

  @override
  String get verify => 'Verify';

  @override
  String get placeHolderReferrerPhoneNumber => 'Referrer phone number (optional)';

  @override
  String get usernameExisted => 'This username already exists.';

  @override
  String get phoneNumberExisted => 'This phone number is already in use.';

  @override
  String get verifyOTPSuccess => 'OTP verification success';

  @override
  String get empty => 'This field cannot be empty.';

  @override
  String get usernameInvalid => 'Combination of alphanumeric, minimum 6 characters';

  @override
  String get passwordInvalid => 'Combination of alphanumeric and special characters, minimum 8 characters';

  @override
  String get confirmPasswordNotMatch => 'Passwords do not match';

  @override
  String get phoneInvalid => 'Invalid phone number format.';

  @override
  String get otpInvalid => '6-digit number allowed';

  @override
  String get phoneNumberNotExisted => 'This phone number does not exist in the application.';

  @override
  String usernameOfPhoneNumber(String phoneNumber) {
    return 'The ID of $phoneNumber';
  }

  @override
  String couldNotLunch(String content) {
    return 'I couldn\'t have launch $content';
  }

  @override
  String get id => 'is';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get verifyAccountFailed => 'Username does not match the phone number';

  @override
  String get pleaseEnterPassword => 'Please enter the password to reset.';

  @override
  String get passwordCondition => '(Combination of alphanumeric and special characters, minimum 8 characters)';

  @override
  String get button => 'Button';

  @override
  String resetPasswordSuccess(Object phoneNumber) {
    return 'Password for $phoneNumber has been\nreset.';
  }

  @override
  String get productInformation => 'Product information';

  @override
  String get review => 'Review';

  @override
  String get inquiry => 'Inquiry';

  @override
  String get purchaseReview => 'Purchase review';

  @override
  String get writeReview => 'Write review';

  @override
  String get shoppingCart => 'Shopping cart';

  @override
  String get buyNow => 'Buy now';

  @override
  String get temporaryStorage => 'Temporary storage';

  @override
  String get registration => 'Registration';

  @override
  String get pleaseChooseCategory => 'Please choose a category.';

  @override
  String get pleaseSelectSubCategory => 'Please select a subcategory.';

  @override
  String get pleaseEnterSubject => 'Please enter the subject.';

  @override
  String get pleaseEnterYourDetails => 'Please enter your details.';

  @override
  String get editPhoto => 'Edit photo';

  @override
  String get notification => 'Notification';

  @override
  String get writeQA => 'Write QA';

  @override
  String get qaCompleted => 'QA completed';

  @override
  String get qaHidden => 'This is a hidden post.';

  @override
  String get sendWrittenReview => 'Write a review';

  @override
  String get productRating => 'Product rating';

  @override
  String get uploadImage => 'Upload image';

  @override
  String get writeReviewTextBoxTitle => 'Write review';

  @override
  String get writeReviewHintText => 'Please share your review of the product';

  @override
  String get takePicture => 'Take picture';

  @override
  String get pickFromGallery => 'Choose from gallery';

  @override
  String get deletePicture => 'Delete picture';

  @override
  String get cancel => 'Cancel';

  @override
  String get composeQA => 'Product inquiry';

  @override
  String get submitQA => 'Submit inquiry';

  @override
  String get qaCategoryType => 'Inquiry type';

  @override
  String get qaCategoryTypePlaceHolder => 'Select';

  @override
  String get qaDetails => 'Inquiry details';

  @override
  String get qaDetailsHintText => 'Please enter your inquiry';

  @override
  String get favoriteBoard => 'Favorite board';

  @override
  String get follower => 'Followers';

  @override
  String get delete => 'Delete';

  @override
  String get followManage => 'Follow management';

  @override
  String get referrerStatus => 'Referrer status';

  @override
  String get currentReferrer => 'Current referrers';

  @override
  String numberPeople(Object number) {
    return '$number people';
  }

  @override
  String get currentReferrerList => 'Current referrer list';

  @override
  String get next => 'Next';

  @override
  String get personalInfoTermAccept => '(required) Agree to privacy policy';

  @override
  String get smTermAccept => '(Required) Agree to Success Mania Mall terms of service';

  @override
  String get view => 'View';

  @override
  String get agreeToTermAndCond => 'Agree to terms and conditions';

  @override
  String get successSecretOfTop1 => 'Success Secrets from Top 1%\nof entrepreneurs';

  @override
  String get termAndCondDetails => 'Terms and conditions details';

  @override
  String cartItemAmount(int amount) {
    return 'Total $amount items';
  }

  @override
  String get selectAll => 'Select all';

  @override
  String get editBusinessCard => 'Edit business card';

  @override
  String get businessCardDetails => 'Business card details';

  @override
  String get activity => 'Activity';

  @override
  String get followManagement => 'Follow management';

  @override
  String get favoritesBulletinBoard => 'Favorites bulletin board';

  @override
  String get curationActivities => 'Curation activities';

  @override
  String get communityActivities => 'Community activities';

  @override
  String get myDeliveryInformation => 'My Delivery information';

  @override
  String get checkOrderDeliveryDetails => 'Check order delivery details';

  @override
  String get inquiryDetails => 'Inquiry details';

  @override
  String get etc => 'Etc';

  @override
  String get recommenderStatus => 'Referrer status';

  @override
  String get entire => 'Entire';

  @override
  String get beforeDelivery => 'Before delivery';

  @override
  String get shipping => 'Shipping';

  @override
  String get deliveryComplete => 'Delivery complete';

  @override
  String get refund => 'Refund';

  @override
  String get exchange => 'Exchange';

  @override
  String get deliveryInquiry => 'Delivery inquiry';

  @override
  String get orderDetails => 'Order details';

  @override
  String numberProducts(Object number) {
    return '$number items';
  }

  @override
  String get paymentInformation => 'Payment information';

  @override
  String get totalProductAmount => 'Total product amount';

  @override
  String get deliveryFee => 'Delivery fee';

  @override
  String get totalDiscountAmount => 'Total discount amount';

  @override
  String get paymentAmount => 'Payment amount';

  @override
  String get pointAccumulation => 'Point accumulation';

  @override
  String get paymentReceipt => 'Payment receipt';

  @override
  String get accumulationExpected => 'Expected accumulation';

  @override
  String get ordererInformation => 'Orderer information';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get email => 'Email';

  @override
  String get deliveryInformation => 'Delivery information';

  @override
  String get orderPayment => 'Order / Payment';

  @override
  String get orderer => 'Orderer';

  @override
  String get changeAddress => 'Change dddress';

  @override
  String get defaultShippingAddress => 'Default';

  @override
  String get addShippingAddress => 'Add shipping address';

  @override
  String get add => 'Add';

  @override
  String get whatYouWrote => 'What you wrote';

  @override
  String get postWithComment => 'Post with comment';

  @override
  String get likedPost => 'Liked post';

  @override
  String get justNow => 'Just now';

  @override
  String get noPost => 'No posts';

  @override
  String get exploreOurCommunity => 'Explore our community';

  @override
  String get exploreCurator => 'Explore curator';

  @override
  String get myProfile => 'My profile';

  @override
  String get businessCardEdit => 'Edit business card';

  @override
  String get basicInformation => 'Basic information';

  @override
  String get socialMedia => 'Social media';

  @override
  String get linkUrl => 'Link URL';

  @override
  String get snsSelect => 'Select SNS';

  @override
  String get addition => 'Addition';

  @override
  String get fileAttach => 'File attach';

  @override
  String get list => 'List';

  @override
  String get title => 'Title';

  @override
  String get imageFile => 'Image file';

  @override
  String get deletePhoto => 'Delete photo';

  @override
  String get changePhoto => 'Change photo';

  @override
  String get follow => 'Follow';

  @override
  String get following => 'Following';

  @override
  String get setting => 'Setting';

  @override
  String get accountInformationManagement => 'Account information management';

  @override
  String get notificationSettings => 'Notification settings';

  @override
  String get languageSettings => 'Language settings';

  @override
  String get korean => 'Korean';

  @override
  String get usagePolicy => 'Usage policy';

  @override
  String get logout => 'Logout';

  @override
  String get edit => 'Edit';

  @override
  String get withdrawal => 'Withdrawal';

  @override
  String get save => 'Save';

  @override
  String get changePassword => 'Change password';

  @override
  String get editCellPhoneNumber => 'Edit cell phone number';

  @override
  String get followNewPostNotification => 'Follow new post notification';

  @override
  String get commentAlert => 'Comment alert';

  @override
  String get likeAlert => 'Like alert';

  @override
  String get termAndPolicyConditions => 'Term and Policy conditions';

  @override
  String get currentPassword => 'Current password';

  @override
  String get passwordToChange => 'Password to change';

  @override
  String get change => 'Change';

  @override
  String get changePhoneNumber => 'Change phone number';

  @override
  String get recentSearches => 'Recent searches';

  @override
  String get clearAllHistory => 'Clear all history';

  @override
  String get someThingWentWrong => 'Something went wrong.';

  @override
  String get addThumbnail => 'Add thumbnail';

  @override
  String get selectLanguage => 'Select language';

  @override
  String get someError => 'Some error';

  @override
  String get general => 'General';

  @override
  String get product => 'Product';

  @override
  String get quality => 'Quality';

  @override
  String get warranty => 'Warranty';

  @override
  String get loginAndSignUp => 'Login and sign up';

  @override
  String get youNeedToLoginToAccessThisContent => 'You need to login to access this content';

  @override
  String get goToLoginPage => 'Go to login page';

  @override
  String get pleaseLoginToViewRegisteredInformation => 'Please login to view registered information. Would you like to log in?';

  @override
  String get alertProductAddedToCart => 'Product added to cart alert';

  @override
  String get orderProduct => 'Order product';

  @override
  String get addressSearch => 'Address search';

  @override
  String totalPrice(Object price, Object totalProduct) {
    return 'Total $totalProduct items $price KRW';
  }

  @override
  String totalPriceWithoutNumber(Object price) {
    return 'Pay $price KRW';
  }

  @override
  String get orderProductAgree => 'I have checked the product name, price, and delivery information of the product to be ordered, and agree to purchase it.';

  @override
  String get addToCart => 'Add to cart';

  @override
  String get leaveAComment => 'Leave a comment';

  @override
  String get replyingTo => 'Replying to: ';

  @override
  String get editingComment => 'Editing comment...';

  @override
  String get noFollowers => 'No followers';

  @override
  String get noFollowings => 'No followings';

  @override
  String get paymentFailedMessage => 'Payment failed.\nPlease try again.';

  @override
  String get paymentSuccessMessage => 'Payment completed.\nThank you for your order.';

  @override
  String get apply => 'Apply';

  @override
  String get noPostDisplayed => 'No post displayed.';

  @override
  String get urlInvalid => 'Invalid URL.';

  @override
  String get copiedToClipboard => 'Copied to clipboard.';

  @override
  String get invalidEmailFormat => 'Invalid email format';

  @override
  String get areYouSureYouWantToUnregister => 'Are you sure you want to unregister?';

  @override
  String get areYouSureYouWantToDelete => 'Are you sure you want to delete?';

  @override
  String get inquiryCategory => 'Inquiry category';

  @override
  String get answerComplete => 'Answer complete';

  @override
  String get emptyList => 'Empty';

  @override
  String get savePostSuccess => 'Post saved successfully';

  @override
  String get unconfirmed => 'Unconfirmed';

  @override
  String get confirmed => 'Confirmed';

  @override
  String get delivered => 'Delivered';

  @override
  String get informationSupplement => 'Infomation supplement';

  @override
  String get commentMyPost => 'Comment';

  @override
  String get followingUploadPost => 'New post';

  @override
  String get reactMyPost => 'Reaction';

  @override
  String get shareSuccessfully => 'Shared successfully';

  @override
  String get daddrs1000 => 'Address not found.';

  @override
  String get aa1000 => 'user not found';

  @override
  String get aa1001 => 'access denied';

  @override
  String get aa1002 => 'access token expired';

  @override
  String get aa1003 => 'refresh token expired';

  @override
  String get aa1004 => 'session token expired';

  @override
  String get aa1005 => 'token invalid';

  @override
  String get aa1006 => 'google id token invalid';

  @override
  String get aa1007 => 'can\'t send otp';

  @override
  String get aa1008 => 'otp expired';

  @override
  String get aa1009 => 'otp not match';

  @override
  String get aa1010 => 'auth method not supported for this user';

  @override
  String get aa1011 => 'Kakao token invalid';

  @override
  String get aa1012 => 'Naver token invalid';

  @override
  String get a1001 => 'internal server error';

  @override
  String get a1002 => 'invalid request data';

  @override
  String get a1003 => 'request method not supported';

  @override
  String get dcrt1000 => 'Cart not found';

  @override
  String get dcrt1001 => 'Product quantity must be less than or equal to the quantity in stock';

  @override
  String get dc1000 => 'can\'t add sub-category of second depth category';

  @override
  String get dc1001 => 'category not allow adding sub-category';

  @override
  String get dc1002 => 'category type not correct';

  @override
  String get dc1003 => 'can\'t delete category';

  @override
  String get dc1004 => 'can\'t change category name';

  @override
  String get dc1005 => 'category not found';

  @override
  String get dcmt1000 => 'Comment not found';

  @override
  String get dcmt1001 => 'Parent comment not found';

  @override
  String get dcmt1002 => 'Do not have permission to edit';

  @override
  String get dcmt1003 => 'Can not reply hidden comment';

  @override
  String get dfvrcate1000 => 'Favorite category accept parent category only.';

  @override
  String get af1000 => 'uploaded file name is invalid';

  @override
  String get af1001 => 'file type not supported';

  @override
  String get af1002 => 'file parsing error';

  @override
  String get dfile1000 => 'File not found';

  @override
  String get dfl1000 => 'You can not follow yourself';

  @override
  String get dfl1001 => 'You can not unfollow yourself';

  @override
  String get dl1005 => 'locale not supported';

  @override
  String get dmp1000 => 'Main page not found';

  @override
  String get dntf1000 => 'Notification not found';

  @override
  String get dntfs1000 => 'Notification setting not found';

  @override
  String get dordd1000 => 'Order detail not found';

  @override
  String get aods1 => 'Order Detail Session not found';

  @override
  String get dord1000 => 'Order fail';

  @override
  String get dord1001 => 'Order not found';

  @override
  String get dord1002 => 'Order does not belong to this user';

  @override
  String get dord1003 => 'Order only cancel in order status : UNCONFIRMED - CONFIRMED';

  @override
  String get dord1004 => 'Order only cancel in order status : UNCONFIRMED - CONFIRMED - DELIVERING';

  @override
  String get dord1005 => 'Admin only change Order status follow this : UNCONFIRMED -> CONFIRMED -> DELIVERING -> DELIVERED';

  @override
  String get dord1006 => 'Admin only refund Order status follow this : CANCEL -> REFUND';

  @override
  String get dord1007 => 'Refund fail';

  @override
  String get aos1 => 'Order Session not found';

  @override
  String get aos2 => 'Product quantity must be less than or equal to the quantity in stock';

  @override
  String get dpst1000 => 'post not found';

  @override
  String get dpst1001 => 'Post accept child category only';

  @override
  String get dpst1002 => 'Post accept parent category only';

  @override
  String get dpst1003 => 'Post category do not match';

  @override
  String get dpst1004 => 'Post parent category is required';

  @override
  String get dprd1000 => 'product not found';

  @override
  String get dpu1000 => 'Profile Url not found';

  @override
  String get dqa1000 => 'QnA not found';

  @override
  String get dqa1001 => 'Other people\'s qna cannot be deleted';

  @override
  String get drt1000 => 'Rating not found';

  @override
  String get drt1001 => 'Other people\'s reviews cannot be deleted';

  @override
  String get drct1000 => 'Reaction not found';

  @override
  String get dsf1000 => 'Shipping Fee not found';

  @override
  String get dsm1000 => 'Social media not found';

  @override
  String get au1000 => 'user not found';

  @override
  String get du1001 => 'invalid email format';

  @override
  String get du1002 => 'invalid phone number format';

  @override
  String get du1003 => 'user type does not allow password';

  @override
  String get du1004 => 'user already have referred user';

  @override
  String get du1005 => 'wrong password';

  @override
  String get du1006 => 'invalid password format';

  @override
  String get du1007 => 'invalid username format';

  @override
  String get du1008 => 'duplicate username';

  @override
  String get du1009 => 'duplicate email';

  @override
  String get du1010 => 'duplicate user phone number';

  @override
  String get du1011 => 'can\'t change email of social user';

  @override
  String get du1012 => 'can\'t change phone number of social user';

  @override
  String get du1013 => 'user not finished registration';

  @override
  String get du1014 => 'user not need information supplement';

  @override
  String get du1015 => 'user role not sufficient';

  @override
  String get du1016 => 'user not found';

  @override
  String get du1017 => 'can not deactivate system account';

  @override
  String get sw101 => 'The issued unique key does not exist';

  @override
  String get sw102 => 'Expired key';

  @override
  String get sw103 => 'Exceeded key usage limit';

  @override
  String get sw104 => 'Invalid invoice number or courier code input';

  @override
  String get sw105 => 'Exceeded daily request limit for the same invoice';

  @override
  String get sw106 => 'Error in invoice number inquiry';

  @override
  String get sw500 => 'Server error.';

  @override
  String get connectionFailure => 'can not connect to server. Please try again later';

  @override
  String get timeoutFailure => 'request timeout';

  @override
  String get otherDioFailure => 'some thing went wrong';

  @override
  String get convertDataFailure => 'convert data failure';

  @override
  String get genericFailure => 'generic failure';

  @override
  String get persistentFailure => 'persistent failure';

  @override
  String get recipient => 'recipient';

  @override
  String get address => 'address';

  @override
  String get checkAuthenticationNumber => 'Check authentication number';

  @override
  String get enterDetailedAddress => 'enter detailed address';

  @override
  String get setDefaultAddress => 'Set default address';

  @override
  String get longVideo => 'Long';

  @override
  String get shortVideo => 'Short';

  @override
  String get reaction => 'Reaction';

  @override
  String get viewDetails => 'View details';

  @override
  String get areYouSureYouWantToCancelThisOrder => 'Are you sure you want to cancel this order?';

  @override
  String get deliveryStatus => 'Delivery status';

  @override
  String get waybillNumber => 'Waybill number';

  @override
  String get productAcceptance => 'Product Acceptance';

  @override
  String get productInTransit => 'Product In Transit';

  @override
  String get deliveryArrived => 'Delivery Arrived';

  @override
  String get startDelivery => 'Start Delivery';

  @override
  String get deliveryInformationHasNotBeenUpdated => 'Delivery information has not been updated. Please try again later';

  @override
  String get dicountInvalid => 'Discount cannot exceed 30% of order value';

  @override
  String get payment => 'Payment';

  @override
  String get inquiryHistory => 'Inquiry history';

  @override
  String get answeredInquiry => 'Answered';

  @override
  String get pending => 'Pending';
}
