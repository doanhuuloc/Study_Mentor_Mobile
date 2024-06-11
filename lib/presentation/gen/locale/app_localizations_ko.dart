import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Korean (`ko`).
class SKo extends S {
  SKo([String locale = 'ko']) : super(locale);

  @override
  String get home => '홈';

  @override
  String get community => '커뮤니티';

  @override
  String get forum => '게시판';

  @override
  String get store => '스토어';

  @override
  String get profile => '마이페이지';

  @override
  String get profileNavText => 'MY';

  @override
  String get news => 'NEWS';

  @override
  String get fullMenu => '전체메뉴';

  @override
  String get bestReview => 'Best Review';

  @override
  String get pressAgainToCloseApp => '앱을 닫으려면 다시 누르세요.';

  @override
  String get seeAll => '전체보기';

  @override
  String get onlineMagazine => 'ONLINE MAGAZINE';

  @override
  String get sgmNews => 'SGM NEWS';

  @override
  String get sungongMuseum => 'SUNGONG MUSEUM';

  @override
  String get communityCategory => '커뮤니티 카테고리';

  @override
  String get bulletBoardCategory => '게시판 카테고리';

  @override
  String get storeCategory => '스토어 카테고리';

  @override
  String get sungongMuseumKo => '성공뮤지엄';

  @override
  String get category => '카테고리';

  @override
  String get latest => '최신순';

  @override
  String get popular => '인기순';

  @override
  String get recommended => '추천순';

  @override
  String get compose => '글쓰기';

  @override
  String get bestContents => 'Best Contents';

  @override
  String get onlineMagazineKo => '온라인 매거진';

  @override
  String get bestReviewLower => 'Best Review';

  @override
  String get selfEmployment => '자영업';

  @override
  String get sales => '영업';

  @override
  String get houseWife => '주부';

  @override
  String get officeWorkers => '직장인';

  @override
  String get inseldeomBusiness => '인셀덤 사업';

  @override
  String get allPosts => '전체글';

  @override
  String get favoritePosts => '즐겨찾기';

  @override
  String get popularPosts => '인기순';

  @override
  String get curator => '큐레이션';

  @override
  String get unit => '원';

  @override
  String commonCurrencyFormat(double value) {
    final intl.NumberFormat valueNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String valueString = valueNumberFormat.format(value);

    return '$valueString원';
  }

  @override
  String get easyLoginSNS => 'SNS 간편 로그인';

  @override
  String get signIn => '로그인';

  @override
  String get register => '회원가입';

  @override
  String get findId => '아이디 찾기';

  @override
  String get findPassword => '비밀번호 찾기';

  @override
  String get password => '비밀번호';

  @override
  String get username => '아이디';

  @override
  String minutesAgo(String time) {
    return '$time분 전';
  }

  @override
  String hoursAgo(String time) {
    return '$time시간 전';
  }

  @override
  String totalItems(int totalItems) {
    return '총 $totalItems개';
  }

  @override
  String get notificationAlert => '공고';

  @override
  String get ok => '좋아요';

  @override
  String get comment => '댓글';

  @override
  String get viewProfile => '프로필 보기';

  @override
  String get writer => '작성자';

  @override
  String get writeReply => '답글쓰기';

  @override
  String get great => '좋아요';

  @override
  String get joinMemberShip => '회원가입';

  @override
  String get placeHolderId => '아이디';

  @override
  String get validationId => '영문, 숫자 조합 8자 이내';

  @override
  String get placeHolderPassword => '비밀번호';

  @override
  String get validationPassword => '영문, 숫자, 특수문자를 포함한 8-16자 조합';

  @override
  String get doubleCheck => '중복확인';

  @override
  String get placeHolderConfirmPassword => '비밀번호 확인';

  @override
  String get placeHolderName => '이름';

  @override
  String get placeHolderPhone => '전화번호';

  @override
  String get sendAuthentication => '인증번호 전송';

  @override
  String get otpNumber => '인증번호';

  @override
  String get verify => '인증하기';

  @override
  String get placeHolderReferrerPhoneNumber => '추천인 전화번호 (선택사항)';

  @override
  String get usernameExisted => '이 사용자 이름은 존재합니다.';

  @override
  String get phoneNumberExisted => '이 전화번호는 이미 사용 중입니다.';

  @override
  String get verifyOTPSuccess => 'OTP 인증 성공';

  @override
  String get empty => '이 필드는 비워둘 수 없습니다.';

  @override
  String get usernameInvalid => '영문과 숫자의 조합 6자 이상';

  @override
  String get passwordInvalid => '영문, 숫자, 특수문자를 포함하여 8자 이상 조합';

  @override
  String get confirmPasswordNotMatch => '비밀번호가 일치하지 않습니다';

  @override
  String get phoneInvalid => '전화번호 형식이 잘못되었습니다.';

  @override
  String get otpInvalid => '6개 숫자 가능';

  @override
  String get phoneNumberNotExisted => '이 전화번호는 애플리케이션에 존재하지 않습니다.';

  @override
  String usernameOfPhoneNumber(String phoneNumber) {
    return '$phoneNumber님의 아이디는';
  }

  @override
  String couldNotLunch(String content) {
    return '점심을 못 먹었어요 $content';
  }

  @override
  String get id => '입니다';

  @override
  String get resetPassword => '비밀번호 재설정';

  @override
  String get verifyAccountFailed => '사용자 이름이 전화번호와 일치하지 않습니다';

  @override
  String get pleaseEnterPassword => '재설정할 비밀번호를 입력해 주세요.';

  @override
  String get passwordCondition => '(영문, 숫자, 특수문자를 포함하여 8자 이상 조합)';

  @override
  String get button => '버튼';

  @override
  String resetPasswordSuccess(Object phoneNumber) {
    return '$phoneNumber님의 비밀번호가\n재설정 되었습니다.';
  }

  @override
  String get productInformation => '제품 정보';

  @override
  String get review => '후기';

  @override
  String get inquiry => '문의';

  @override
  String get purchaseReview => '구매후기';

  @override
  String get writeReview => '후기 작성';

  @override
  String get shoppingCart => '장바구니';

  @override
  String get buyNow => '바로 구매하기';

  @override
  String get temporaryStorage => '임시저장';

  @override
  String get registration => '등록';

  @override
  String get pleaseChooseCategory => '카테고리를 선택해주세요.';

  @override
  String get pleaseSelectSubCategory => '분류를 선택해주세요.';

  @override
  String get pleaseEnterSubject => '제목을 입력해주세요.';

  @override
  String get pleaseEnterYourDetails => '내용을 입력해주세요.';

  @override
  String get editPhoto => '사진 편집';

  @override
  String get notification => '알림';

  @override
  String get writeQA => '문의 작성';

  @override
  String get qaCompleted => '답변 완료';

  @override
  String get qaHidden => '비밀글 입니다.';

  @override
  String get sendWrittenReview => '후기 작성하기';

  @override
  String get productRating => '상품 별점';

  @override
  String get uploadImage => '사진 업로드';

  @override
  String get writeReviewTextBoxTitle => '리뷰 작성';

  @override
  String get writeReviewHintText => '상품의 후기를 알려주세요';

  @override
  String get takePicture => '사진촬영';

  @override
  String get pickFromGallery => '갤러리에서 사진 선택';

  @override
  String get deletePicture => '사진 삭제하기';

  @override
  String get cancel => '취소';

  @override
  String get composeQA => '상품 문의';

  @override
  String get submitQA => '문의하기';

  @override
  String get qaCategoryType => '문의 유형';

  @override
  String get qaCategoryTypePlaceHolder => '선택';

  @override
  String get qaDetails => '문의 내용';

  @override
  String get qaDetailsHintText => '문의 내용을 입력하세요';

  @override
  String get favoriteBoard => '즐겨찾기 게시판';

  @override
  String get follower => '팔로워';

  @override
  String get delete => '삭제';

  @override
  String get followManage => '팔로우 관리';

  @override
  String get referrerStatus => '추천인 현황';

  @override
  String get currentReferrer => '현재 추천인 수';

  @override
  String numberPeople(Object number) {
    return '$number명';
  }

  @override
  String get currentReferrerList => '현재 추천인 리스트';

  @override
  String get next => '다음';

  @override
  String get personalInfoTermAccept => '(필수) 개인정보 처리방침 동의';

  @override
  String get smTermAccept => '(필수) 성공매니아몰 이용약관 동의';

  @override
  String get view => '보기';

  @override
  String get agreeToTermAndCond => '약관 동의';

  @override
  String get successSecretOfTop1 => '상위 1% 사업가들이 알려주는\n성공 비밀';

  @override
  String get termAndCondDetails => '이용정책 및 약관';

  @override
  String cartItemAmount(int amount) {
    return '총 $amount개';
  }

  @override
  String get selectAll => '전체선택';

  @override
  String get editBusinessCard => '명함 수정하기';

  @override
  String get businessCardDetails => '명함 자세히 보기';

  @override
  String get activity => '활동';

  @override
  String get followManagement => '팔로우 관리';

  @override
  String get favoritesBulletinBoard => '즐겨찾기 게시판';

  @override
  String get curationActivities => '큐레이션 활동';

  @override
  String get communityActivities => '커뮤니티 활동';

  @override
  String get myDeliveryInformation => '나의 배송정보';

  @override
  String get checkOrderDeliveryDetails => '주문배송내역 조회';

  @override
  String get inquiryDetails => '문의내역';

  @override
  String get etc => '기타';

  @override
  String get recommenderStatus => '추천인 현황';

  @override
  String get entire => '전체';

  @override
  String get beforeDelivery => '배송전';

  @override
  String get shipping => '배송중';

  @override
  String get deliveryComplete => '배송완료';

  @override
  String get refund => '환불';

  @override
  String get exchange => '교환';

  @override
  String get deliveryInquiry => '배송조회';

  @override
  String get orderDetails => '주문 상세보기';

  @override
  String numberProducts(Object number) {
    return '$number개';
  }

  @override
  String get paymentInformation => '결제 정보';

  @override
  String get totalProductAmount => '총 상품금액';

  @override
  String get deliveryFee => '배송비';

  @override
  String get totalDiscountAmount => '총 할인금액';

  @override
  String get paymentAmount => '결제금액';

  @override
  String get pointAccumulation => '포인트 적립';

  @override
  String get paymentReceipt => '결제 영수증';

  @override
  String get accumulationExpected => '적립 예정';

  @override
  String get ordererInformation => '주문자 정보';

  @override
  String get phoneNumber => '전화번호';

  @override
  String get email => '이메일';

  @override
  String get deliveryInformation => '배송 정보';

  @override
  String get orderPayment => '주문 /  결제';

  @override
  String get orderer => '주문자';

  @override
  String get changeAddress => '배송지 변경';

  @override
  String get defaultShippingAddress => '기본배송지';

  @override
  String get addShippingAddress => '배송지 추가';

  @override
  String get add => '추가하기';

  @override
  String get whatYouWrote => '작성한 글';

  @override
  String get postWithComment => '댓글 작성한 글';

  @override
  String get likedPost => '좋아요한 글';

  @override
  String get justNow => '방금';

  @override
  String get noPost => '게시물이 없습니다';

  @override
  String get exploreOurCommunity => '커뮤니티 둘러보기';

  @override
  String get exploreCurator => '큐레이션 둘러보기';

  @override
  String get myProfile => '프로필';

  @override
  String get businessCardEdit => '명함 수정';

  @override
  String get basicInformation => '기본정보';

  @override
  String get socialMedia => '소셜 미디어';

  @override
  String get linkUrl => '링크 URL';

  @override
  String get snsSelect => 'SNS 선택';

  @override
  String get addition => '추가';

  @override
  String get fileAttach => '파일첨부';

  @override
  String get list => '목록';

  @override
  String get title => '제목';

  @override
  String get imageFile => '이미지 파일';

  @override
  String get deletePhoto => '사진 삭제하기';

  @override
  String get changePhoto => '사진 변경';

  @override
  String get follow => '팔로우';

  @override
  String get following => '팔로우 중';

  @override
  String get setting => '설정';

  @override
  String get accountInformationManagement => '계정정보 관리';

  @override
  String get notificationSettings => '알림 설정';

  @override
  String get languageSettings => '언어 설정';

  @override
  String get korean => '한국어';

  @override
  String get usagePolicy => '이용정책';

  @override
  String get logout => '로그아웃';

  @override
  String get edit => '편집';

  @override
  String get withdrawal => '회원 탈퇴';

  @override
  String get save => '저장하기';

  @override
  String get changePassword => '비빌번호 변경';

  @override
  String get editCellPhoneNumber => '핸드폰 번호 수정';

  @override
  String get followNewPostNotification => '팔로우 새글 알람';

  @override
  String get commentAlert => '댓글 알람';

  @override
  String get likeAlert => '좋아요 알람';

  @override
  String get termAndPolicyConditions => '이용정책 및 약관';

  @override
  String get currentPassword => '현재 비밀번호';

  @override
  String get passwordToChange => '변경 할 비밀번호';

  @override
  String get change => '변경하기';

  @override
  String get changePhoneNumber => '전화번호 변경';

  @override
  String get recentSearches => '최근 검색어';

  @override
  String get clearAllHistory => '검색기록 전체 삭제';

  @override
  String get someThingWentWrong => '문제가 발생했습니다.';

  @override
  String get addThumbnail => '썸네일 추가';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get someError => '오류가 발생했습니다.';

  @override
  String get general => '일반';

  @override
  String get product => '상품';

  @override
  String get quality => '품질';

  @override
  String get warranty => '보증';

  @override
  String get loginAndSignUp => '로그인 및 회원가입';

  @override
  String get youNeedToLoginToAccessThisContent => '이 콘텐츠에 접근하려면 로그인이 필요합니다';

  @override
  String get goToLoginPage => '로그인 페이지로 이동';

  @override
  String get pleaseLoginToViewRegisteredInformation =>
      '이 기능은 로그인이 필요합니다. 로그인하시겠습니까?';

  @override
  String get alertProductAddedToCart => '장바구니에 추가된 제품';

  @override
  String get orderProduct => '주문상품';

  @override
  String get addressSearch => '주소 검색';

  @override
  String totalPrice(Object price, Object totalProduct) {
    return '총 $totalProduct개 $price원';
  }

  @override
  String totalPriceWithoutNumber(Object price) {
    return '$price원 결제하기';
  }

  @override
  String get orderProductAgree => '주문할 상품의 상품명, 상품가격, 배송 정보를 확인하였으며,구매에 동의합니다.';

  @override
  String get addToCart => '장바구니에 추가';

  @override
  String get leaveAComment => '댓글 남기기';

  @override
  String get replyingTo => '에 응답하다: ';

  @override
  String get editingComment => '댓글 편집...';

  @override
  String get noFollowers => '팔로어가 없습니다.';

  @override
  String get noFollowings => '다음이 없습니다.';

  @override
  String get paymentFailedMessage => '결제에 실패했습니다.\n다시 시도해 주세요.';

  @override
  String get paymentSuccessMessage => '결제가 완료되었습니다.\n 주문해주셔서 감사합니다..';

  @override
  String get apply => '신청하기';

  @override
  String get noPostDisplayed => '표시된 게시물이 없습니다.';

  @override
  String get urlInvalid => '유효하지 않은 URL입니다.';

  @override
  String get copiedToClipboard => '클립보드에 복사되었습니다.';

  @override
  String get invalidEmailFormat => '잘못된 이메일 형식';

  @override
  String get areYouSureYouWantToUnregister => '정말로 등록을 취소하시겠습니까?';

  @override
  String get areYouSureYouWantToDelete => '정말로 삭제하시겠습니까?';

  @override
  String get inquiryCategory => '문의 구분';

  @override
  String get answerComplete => '답변완료';

  @override
  String get emptyList => '공허한';

  @override
  String get savePostSuccess => '게시물이 저장되었습니다';

  @override
  String get unconfirmed => '확인되지 않은';

  @override
  String get confirmed => '확인됨';

  @override
  String get delivered => '배달됨';

  @override
  String get informationSupplement => '정보 보충';

  @override
  String get commentMyPost => '논평';

  @override
  String get followingUploadPost => '새 글';

  @override
  String get reactMyPost => '반작용';

  @override
  String get shareSuccessfully => '성공적으로 공유되었습니다';

  @override
  String get daddrs1000 => '주소를 찾을 수 없습니다.';

  @override
  String get aa1000 => '사용자를 찾을 수 없습니다.';

  @override
  String get aa1001 => '접근이 거부되었습니다.';

  @override
  String get aa1002 => '액세스 토큰이 만료되었습니다.';

  @override
  String get aa1003 => '리프레시 토큰이 만료되었습니다.';

  @override
  String get aa1004 => '세션 토큰이 만료되었습니다.';

  @override
  String get aa1005 => '토큰이 유효하지 않습니다.';

  @override
  String get aa1006 => 'Google ID 토큰이 유효하지 않습니다.';

  @override
  String get aa1007 => 'OTP를 보낼 수 없습니다.';

  @override
  String get aa1008 => 'OTP가 만료되었습니다.';

  @override
  String get aa1009 => 'OTP가 일치하지 않습니다.';

  @override
  String get aa1010 => '이 사용자에게는 인증 방법이 지원되지 않습니다.';

  @override
  String get aa1011 => 'Kakao 토큰이 유효하지 않습니다.';

  @override
  String get aa1012 => 'Naver 토큰이 유효하지 않습니다.';

  @override
  String get a1001 => '내부 서버 오류';

  @override
  String get a1002 => '잘못된 요청 데이터';

  @override
  String get a1003 => '지원되지 않는 요청 메서드';

  @override
  String get dcrt1000 => '카트를 찾을 수 없습니다.';

  @override
  String get dcrt1001 => '제품 수량은 재고 수량보다 작거나 같아야 합니다.';

  @override
  String get dc1000 => '두 번째 깊이 카테고리의 하위 카테고리를 추가할 수 없습니다.';

  @override
  String get dc1001 => '카테고리에 하위 카테고리를 추가할 수 없습니다.';

  @override
  String get dc1002 => '카테고리 유형이 올바르지 않습니다.';

  @override
  String get dc1003 => '카테고리를 삭제할 수 없습니다.';

  @override
  String get dc1004 => '카테고리 이름을 변경할 수 없습니다.';

  @override
  String get dc1005 => '카테고리를 찾을 수 없습니다.';

  @override
  String get dcmt1000 => '댓글을 찾을 수 없습니다.';

  @override
  String get dcmt1001 => '상위 댓글을 찾을 수 없습니다.';

  @override
  String get dcmt1002 => '편집 권한이 없습니다.';

  @override
  String get dcmt1003 => '숨겨진 댓글에 답글을 달 수 없습니다.';

  @override
  String get dfvrcate1000 => '즐겨찾는 카테고리는 상위 카테고리만 허용됩니다.';

  @override
  String get af1000 => '업로드된 파일 이름이 유효하지 않습니다.';

  @override
  String get af1001 => '지원되지 않는 파일 유형';

  @override
  String get af1002 => '파일 구문 분석 오류';

  @override
  String get dfile1000 => '파일을 찾을 수 없습니다.';

  @override
  String get dfl1000 => '자신을 팔로우할 수 없습니다.';

  @override
  String get dfl1001 => '자신을 언팔로우할 수 없습니다.';

  @override
  String get dl1005 => '로케일이 지원되지 않습니다.';

  @override
  String get dmp1000 => '메인 페이지를 찾을 수 없습니다.';

  @override
  String get dntf1000 => '알림을 찾을 수 없습니다.';

  @override
  String get dntfs1000 => '알림 설정을 찾을 수 없습니다.';

  @override
  String get dordd1000 => '주문 세부 정보를 찾을 수 없습니다.';

  @override
  String get aods1 => '주문 세부 세션을 찾을 수 없습니다.';

  @override
  String get dord1000 => '주문 실패';

  @override
  String get dord1001 => '주문을 찾을 수 없습니다.';

  @override
  String get dord1002 => '이 주문은 이 사용자에게 속하지 않습니다.';

  @override
  String get dord1003 => '주문은 未確認 - 確認済み 상태에서만 취소할 수 있습니다.';

  @override
  String get dord1004 => '주문은 未確認 - 確認済み - 배달 중 상태에서만 취소할 수 있습니다.';

  @override
  String get dord1005 =>
      '관리자만 주문 상태를 다음과 같이 변경할 수 있습니다: 未確認 -> 確認済み -> 배달 중 -> 配送済み';

  @override
  String get dord1006 => '관리자만 주문 상태를 다음과 같이 환불할 수 있습니다: 취소 -> 환불';

  @override
  String get dord1007 => '환불 실패';

  @override
  String get aos1 => '주문 세션을 찾을 수 없습니다.';

  @override
  String get aos2 => '제품 수량은 재고 수량보다 작거나 같아야 합니다.';

  @override
  String get dpst1000 => '게시물을 찾을 수 없습니다.';

  @override
  String get dpst1001 => '게시물은 하위 카테고리만 허용됩니다.';

  @override
  String get dpst1002 => '게시물은 상위 카테고리만 허용됩니다.';

  @override
  String get dpst1003 => '게시물 카테고리가 일치하지 않습니다.';

  @override
  String get dpst1004 => '게시물 상위 카테고리가 필요합니다.';

  @override
  String get dprd1000 => '제품을 찾을 수 없습니다.';

  @override
  String get dpu1000 => '프로필 URL을 찾을 수 없습니다.';

  @override
  String get dqa1000 => '질문 및 답변을 찾을 수 없습니다.';

  @override
  String get dqa1001 => '다른 사람의 QnA는 삭제할 수 없습니다.';

  @override
  String get drt1000 => '평점을 찾을 수 없습니다.';

  @override
  String get drt1001 => '다른 사람의 리뷰는 삭제할 수 없습니다.';

  @override
  String get drct1000 => '반응을 찾을 수 없습니다.';

  @override
  String get dsf1000 => '배송료를 찾을 수 없습니다.';

  @override
  String get dsm1000 => '소셜 미디어를 찾을 수 없습니다.';

  @override
  String get au1000 => '사용자를 찾을 수 없습니다.';

  @override
  String get du1001 => '잘못된 이메일 형식';

  @override
  String get du1002 => '잘못된 전화 번호 형식';

  @override
  String get du1003 => '사용자 유형은 비밀번호를 허용하지 않습니다.';

  @override
  String get du1004 => '사용자가 이미 추천한 사용자가 있습니다.';

  @override
  String get du1005 => '잘못된 비밀번호';

  @override
  String get du1006 => '잘못된 비밀번호 형식';

  @override
  String get du1007 => '잘못된 사용자 이름 형식';

  @override
  String get du1008 => '중복된 사용자 이름';

  @override
  String get du1009 => '중복된 이메일';

  @override
  String get du1010 => '중복된 사용자 전화 번호';

  @override
  String get du1011 => '소셜 사용자의 이메일을 변경할 수 없습니다.';

  @override
  String get du1012 => '소셜 사용자의 전화 번호를 변경할 수 없습니다.';

  @override
  String get du1013 => '사용자가 등록을 완료하지 않았습니다.';

  @override
  String get du1014 => '사용자에게 정보 보충이 필요하지 않습니다.';

  @override
  String get du1015 => '사용자 역할이 충분하지 않습니다.';

  @override
  String get du1016 => '사용자를 찾을 수 없습니다.';

  @override
  String get du1017 => '시스템 계정을 비활성화할 수 없습니다.';

  @override
  String get sw101 => '발급된 고유키가 존재 하지 않음';

  @override
  String get sw102 => '만료된 키';

  @override
  String get sw103 => '키 사용량 초과';

  @override
  String get sw104 => '유효하지 않은 운송장 번호 혹은 택배사 코드 입력';

  @override
  String get sw105 => '동일한 운송장의 하루 요청 제한 건수 초과';

  @override
  String get sw106 => '운송장 번호 조회 에러';

  @override
  String get sw500 => '서버 에러 입니다';

  @override
  String get connectionFailure => '서버에 연결할 수 없습니다. 나중에 다시 시도해주세요.';

  @override
  String get timeoutFailure => '요청 시간이 초과되었습니다.';

  @override
  String get otherDioFailure => '문제가 발생했습니다.';

  @override
  String get convertDataFailure => '데이터 변환 실패';

  @override
  String get genericFailure => '일반적인 실패';

  @override
  String get persistentFailure => '지속적인 실패';

  @override
  String get recipient => '받는 사람';

  @override
  String get address => '주소';

  @override
  String get checkAuthenticationNumber => '인증번호 확인';

  @override
  String get enterDetailedAddress => '상세주소 입력';

  @override
  String get setDefaultAddress => '기본배송지 설정';

  @override
  String get longVideo => '긴 영상';

  @override
  String get shortVideo => '짧은 영상';

  @override
  String get reaction => '반응';

  @override
  String get viewDetails => '상세보기';

  @override
  String get areYouSureYouWantToCancelThisOrder => '정말 이 주문을 취소하시겠습니까?';

  @override
  String get deliveryStatus => '배송 상태';

  @override
  String get waybillNumber => '운송장 번호';

  @override
  String get productAcceptance => '상품인수';

  @override
  String get productInTransit => '상품이동중';

  @override
  String get deliveryArrived => '배송지도착';

  @override
  String get startDelivery => '배송출발';

  @override
  String get deliveryInformationHasNotBeenUpdated =>
      '배송정보가 업데이트되지 않았습니다. 나중에 다시 시도 해주십시오';

  @override
  String get dicountInvalid => '할인 금액은 주문 금액의 30%를 초과할 수 없습니다.';

  @override
  String get payment => '지불';

  @override
  String get inquiryHistory => '문의내역';

  @override
  String get answeredInquiry => '답변됨';

  @override
  String get pending => '보류 중';
}
