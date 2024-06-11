import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Japanese (`ja`).
class SJa extends S {
  SJa([String locale = 'ja']) : super(locale);

  @override
  String get home => 'ホーム';

  @override
  String get community => 'コミュニティ';

  @override
  String get forum => 'フォーラム';

  @override
  String get store => 'ストア';

  @override
  String get profile => 'マイページ';

  @override
  String get profileNavText => 'MY';

  @override
  String get news => 'NEWS';

  @override
  String get fullMenu => '全体メニュー';

  @override
  String get bestReview => 'Best Review';

  @override
  String get pressAgainToCloseApp => 'アプリを閉じるにはもう一度押してください。';

  @override
  String get seeAll => 'すべて表示';

  @override
  String get onlineMagazine => 'ONLINE MAGAZINE';

  @override
  String get sgmNews => 'SGM NEWS';

  @override
  String get sungongMuseum => 'SUNGONG MUSEUM';

  @override
  String get communityCategory => 'コミュニティカテゴリー';

  @override
  String get bulletBoardCategory => 'フォーラムカテゴリー';

  @override
  String get storeCategory => 'ストアカテゴリー';

  @override
  String get sungongMuseumKo => 'スンゴン博物館';

  @override
  String get category => 'カテゴリー';

  @override
  String get latest => '最新順';

  @override
  String get popular => '人気順';

  @override
  String get recommended => 'おすすめ順';

  @override
  String get compose => '投稿する';

  @override
  String get bestContents => 'Best Contents';

  @override
  String get onlineMagazineKo => 'オンラインマガジン';

  @override
  String get bestReviewLower => 'Best Review';

  @override
  String get selfEmployment => '自営業';

  @override
  String get sales => '営業';

  @override
  String get houseWife => '主婦';

  @override
  String get officeWorkers => '会社員';

  @override
  String get inseldeomBusiness => 'インセルダムビジネス';

  @override
  String get allPosts => '全ての投稿';

  @override
  String get favoritePosts => 'お気に入りの投稿';

  @override
  String get popularPosts => '人気の投稿';

  @override
  String get curator => 'キュレーター';

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
  String get easyLoginSNS => 'SNS簡単ログイン';

  @override
  String get signIn => 'ログイン';

  @override
  String get register => '会員登録';

  @override
  String get findId => 'IDを探す';

  @override
  String get findPassword => 'パスワードを忘れる';

  @override
  String get password => 'パスワード';

  @override
  String get username => 'ユーザー名';

  @override
  String minutesAgo(String time) {
    return '$time分前';
  }

  @override
  String hoursAgo(String time) {
    return '$time時間前';
  }

  @override
  String totalItems(int totalItems) {
    return '合計 $totalItems個';
  }

  @override
  String get notificationAlert => 'お知らせ';

  @override
  String get ok => 'いいね';

  @override
  String get comment => 'コメント';

  @override
  String get viewProfile => 'プロフィールを見る';

  @override
  String get writer => '作成者';

  @override
  String get writeReply => '返信を書く';

  @override
  String get great => 'いいね';

  @override
  String get joinMemberShip => '会員登録';

  @override
  String get placeHolderId => 'ID';

  @override
  String get validationId => '英数字の組み合わせ、8文字以内';

  @override
  String get placeHolderPassword => 'パスワード';

  @override
  String get validationPassword => '英数字と記号を含む8-16文字の組み合わせ';

  @override
  String get doubleCheck => '重複確認';

  @override
  String get placeHolderConfirmPassword => 'パスワードの確認';

  @override
  String get placeHolderName => '名前';

  @override
  String get placeHolderPhone => '電話番号';

  @override
  String get sendAuthentication => '認証コード送信';

  @override
  String get otpNumber => '認証コード';

  @override
  String get verify => '認証する';

  @override
  String get placeHolderReferrerPhoneNumber => '紹介者の電話番号（任意）';

  @override
  String get usernameExisted => 'このユーザー名は既に存在します。';

  @override
  String get phoneNumberExisted => 'この電話番号はすでに使用されています。';

  @override
  String get verifyOTPSuccess => 'OTP認証成功';

  @override
  String get empty => 'このフィールドは空白にできません。';

  @override
  String get usernameInvalid => '英数字の組み合わせ、6文字以上';

  @override
  String get passwordInvalid => '英数字と記号を含む8文字以上の組み合わせ';

  @override
  String get confirmPasswordNotMatch => 'パスワードが一致しません';

  @override
  String get phoneInvalid => '電話番号の形式が間違っています。';

  @override
  String get otpInvalid => '6桁の数字が可能です';

  @override
  String get phoneNumberNotExisted => 'この電話番号はアプリケーションに存在しません。';

  @override
  String usernameOfPhoneNumber(String phoneNumber) {
    return '$phoneNumber様のユーザーIDは';
  }

  @override
  String couldNotLunch(String content) {
    return '昼食を食べませんでした $content';
  }

  @override
  String get id => 'です';

  @override
  String get resetPassword => 'パスワードをリセット';

  @override
  String get verifyAccountFailed => 'ユーザー名が電話番号と一致しません';

  @override
  String get pleaseEnterPassword => 'リセットするパスワードを入力してください。';

  @override
  String get passwordCondition => '(英数字、記号を含む8文字以上の組み合わせ)';

  @override
  String get button => 'ボタン';

  @override
  String resetPasswordSuccess(Object phoneNumber) {
    return '$phoneNumber様のパスワードが\nリセットされました。';
  }

  @override
  String get productInformation => '製品情報';

  @override
  String get review => 'レビュー';

  @override
  String get inquiry => 'お問い合わせ';

  @override
  String get purchaseReview => '購入レビュー';

  @override
  String get writeReview => 'レビューを書く';

  @override
  String get shoppingCart => 'ショッピングカート';

  @override
  String get buyNow => '今すぐ購入';

  @override
  String get temporaryStorage => '一時保存';

  @override
  String get registration => '登録';

  @override
  String get pleaseChooseCategory => 'カテゴリを選択してください。';

  @override
  String get pleaseSelectSubCategory => 'サブカテゴリを選択してください。';

  @override
  String get pleaseEnterSubject => '題名を入力してください。';

  @override
  String get pleaseEnterYourDetails => '内容を入力してください。';

  @override
  String get editPhoto => '写真を編集';

  @override
  String get notification => '通知';

  @override
  String get writeQA => 'お問い合わせを書く';

  @override
  String get qaCompleted => '回答完了';

  @override
  String get qaHidden => '非公開です。';

  @override
  String get sendWrittenReview => 'レビューを送信する';

  @override
  String get productRating => '製品評価';

  @override
  String get uploadImage => '画像をアップロード';

  @override
  String get writeReviewTextBoxTitle => 'レビューを書く';

  @override
  String get writeReviewHintText => '製品のレビューをお書きください';

  @override
  String get takePicture => '写真を撮る';

  @override
  String get pickFromGallery => 'ギャラリーから選択';

  @override
  String get deletePicture => '写真を削除する';

  @override
  String get cancel => 'キャンセル';

  @override
  String get composeQA => '製品について問い合わせる';

  @override
  String get submitQA => '問い合わせる';

  @override
  String get qaCategoryType => '問い合わせの種類';

  @override
  String get qaCategoryTypePlaceHolder => '選択';

  @override
  String get qaDetails => '問い合わせ内容';

  @override
  String get qaDetailsHintText => '問い合わせ内容を入力してください';

  @override
  String get favoriteBoard => 'お気に入り掲示板';

  @override
  String get follower => 'フォロワー';

  @override
  String get delete => '削除';

  @override
  String get followManage => 'フォロー管理';

  @override
  String get referrerStatus => '紹介者状況';

  @override
  String get currentReferrer => '現在の紹介者数';

  @override
  String numberPeople(Object number) {
    return '$number人';
  }

  @override
  String get currentReferrerList => '現在の紹介者リスト';

  @override
  String get next => '次へ';

  @override
  String get personalInfoTermAccept => '(必須) 個人情報処理方針に同意する';

  @override
  String get smTermAccept => '(必須) サクセスマニアモール利用規約に同意する';

  @override
  String get view => '表示';

  @override
  String get agreeToTermAndCond => '規約に同意する';

  @override
  String get successSecretOfTop1 => 'トップ1％のビジネスパーソンが教える\n成功の秘訣';

  @override
  String get termAndCondDetails => '利用ポリシーおよび規約';

  @override
  String cartItemAmount(int amount) {
    return '合計 $amount点';
  }

  @override
  String get selectAll => 'すべて選択';

  @override
  String get editBusinessCard => '名刺を編集する';

  @override
  String get businessCardDetails => '名刺の詳細';

  @override
  String get activity => 'アクティビティ';

  @override
  String get followManagement => 'フォロー管理';

  @override
  String get favoritesBulletinBoard => 'お気に入りの掲示板';

  @override
  String get curationActivities => 'キュレーション活動';

  @override
  String get communityActivities => 'コミュニティ活動';

  @override
  String get myDeliveryInformation => '配送情報';

  @override
  String get checkOrderDeliveryDetails => '注文配送詳細の確認';

  @override
  String get inquiryDetails => 'お問い合わせ詳細';

  @override
  String get etc => 'その他';

  @override
  String get recommenderStatus => '紹介者状況';

  @override
  String get entire => '全体';

  @override
  String get beforeDelivery => '配送前';

  @override
  String get shipping => '配送中';

  @override
  String get deliveryComplete => '配送完了';

  @override
  String get refund => '返金';

  @override
  String get exchange => '交換';

  @override
  String get deliveryInquiry => '配送照会';

  @override
  String get orderDetails => '注文詳細';

  @override
  String numberProducts(Object number) {
    return '$number個';
  }

  @override
  String get paymentInformation => '支払い情報';

  @override
  String get totalProductAmount => '総商品金額';

  @override
  String get deliveryFee => '配送料';

  @override
  String get totalDiscountAmount => '総割引額';

  @override
  String get paymentAmount => '支払い金額';

  @override
  String get pointAccumulation => 'ポイント蓄積';

  @override
  String get paymentReceipt => '支払いレシート';

  @override
  String get accumulationExpected => '蓄積予定';

  @override
  String get ordererInformation => '注文者情報';

  @override
  String get phoneNumber => '電話番号';

  @override
  String get email => 'Eメール';

  @override
  String get deliveryInformation => '配送情報';

  @override
  String get orderPayment => '注文 / 支払い';

  @override
  String get orderer => '注文者';

  @override
  String get changeAddress => '配送先変更';

  @override
  String get defaultShippingAddress => 'デフォルト配送先';

  @override
  String get addShippingAddress => '配送先追加';

  @override
  String get add => '追加する';

  @override
  String get whatYouWrote => '書いたもの';

  @override
  String get postWithComment => 'コメント付き投稿';

  @override
  String get likedPost => 'いいねした投稿';

  @override
  String get justNow => 'たった今';

  @override
  String get noPost => '投稿がありません';

  @override
  String get exploreOurCommunity => 'コミュニティを見る';

  @override
  String get exploreCurator => 'キュレーターを見る';

  @override
  String get myProfile => 'プロフィール';

  @override
  String get businessCardEdit => '名刺編集';

  @override
  String get basicInformation => '基本情報';

  @override
  String get socialMedia => 'ソーシャルメディア';

  @override
  String get linkUrl => 'リンクURL';

  @override
  String get snsSelect => 'SNS選択';

  @override
  String get addition => '追加';

  @override
  String get fileAttach => 'ファイル添付';

  @override
  String get list => 'リスト';

  @override
  String get title => 'タイトル';

  @override
  String get imageFile => '画像ファイル';

  @override
  String get deletePhoto => '写真を削除する';

  @override
  String get changePhoto => '写真を変更する';

  @override
  String get follow => 'フォローする';

  @override
  String get following => 'フォロー中';

  @override
  String get setting => '設定';

  @override
  String get accountInformationManagement => 'アカウント情報管理';

  @override
  String get notificationSettings => '通知設定';

  @override
  String get languageSettings => '言語設定';

  @override
  String get korean => '韓国語';

  @override
  String get usagePolicy => '利用ポリシー';

  @override
  String get logout => 'ログアウト';

  @override
  String get edit => '編集';

  @override
  String get withdrawal => '退会';

  @override
  String get save => '保存する';

  @override
  String get changePassword => 'パスワード変更';

  @override
  String get editCellPhoneNumber => '携帯電話番号を編集';

  @override
  String get followNewPostNotification => '新しい投稿をフォローする通知';

  @override
  String get commentAlert => 'コメント通知';

  @override
  String get likeAlert => 'いいね通知';

  @override
  String get termAndPolicyConditions => '利用規約とポリシー';

  @override
  String get currentPassword => '現在のパスワード';

  @override
  String get passwordToChange => '変更するパスワード';

  @override
  String get change => '変更する';

  @override
  String get changePhoneNumber => '電話番号を変更する';

  @override
  String get recentSearches => '最近の検索';

  @override
  String get clearAllHistory => 'すべての履歴を消去';

  @override
  String get someThingWentWrong => '問題が発生しました。';

  @override
  String get addThumbnail => 'サムネイルを追加';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get someError => 'エラーが発生しました。';

  @override
  String get general => '一般';

  @override
  String get product => '製品';

  @override
  String get quality => '品質';

  @override
  String get warranty => '保証';

  @override
  String get loginAndSignUp => 'ログインとサインアップ';

  @override
  String get youNeedToLoginToAccessThisContent => 'このコンテンツにアクセスするにはログインが必要です';

  @override
  String get goToLoginPage => 'ログインページへ移動';

  @override
  String get pleaseLoginToViewRegisteredInformation =>
      'この機能を利用するにはログインが必要です。ログインしますか？';

  @override
  String get alertProductAddedToCart => 'カートに追加された製品';

  @override
  String get orderProduct => '注文製品';

  @override
  String get addressSearch => '住所検索';

  @override
  String totalPrice(Object price, Object totalProduct) {
    return '合計 $totalProduct個 $priceウォン';
  }

  @override
  String totalPriceWithoutNumber(Object price) {
    return '$priceウォンで支払う';
  }

  @override
  String get orderProductAgree => '注文する商品の商品名、価格、配送情報を確認し、購入に同意します。';

  @override
  String get addToCart => 'カートに追加';

  @override
  String get leaveAComment => 'コメントを残す';

  @override
  String get replyingTo => 'への返信：';

  @override
  String get editingComment => 'コメントを編集...';

  @override
  String get noFollowers => 'フォロワーはいません。';

  @override
  String get noFollowings => 'フォロー中のユーザーはいません。';

  @override
  String get paymentFailedMessage => '支払いに失敗しました。\nもう一度お試しください。';

  @override
  String get paymentSuccessMessage => '支払いが完了しました。\nご注文ありがとうございます。';

  @override
  String get apply => '適用する';

  @override
  String get noPostDisplayed => '表示される投稿がありません。';

  @override
  String get urlInvalid => '無効なURLです。';

  @override
  String get copiedToClipboard => 'クリップボードにコピーされました。';

  @override
  String get invalidEmailFormat => '無効なメール形式';

  @override
  String get areYouSureYouWantToUnregister => '本当に登録を解除しますか？';

  @override
  String get areYouSureYouWantToDelete => '本当に削除しますか？';

  @override
  String get inquiryCategory => '問い合わせカテゴリ';

  @override
  String get answerComplete => '回答完了';

  @override
  String get emptyList => '空のリスト';

  @override
  String get savePostSuccess => '投稿が保存されました';

  @override
  String get unconfirmed => '未確認';

  @override
  String get confirmed => '確認済み';

  @override
  String get delivered => '配送済み';

  @override
  String get informationSupplement => '情報補足';

  @override
  String get commentMyPost => 'コメント';

  @override
  String get followingUploadPost => '新しい記事';

  @override
  String get reactMyPost => '反応';

  @override
  String get shareSuccessfully => '正常に共有されました';

  @override
  String get daddrs1000 => '住所が見つかりません。';

  @override
  String get aa1000 => 'ユーザーが見つかりません';

  @override
  String get aa1001 => 'アクセスが拒否されました';

  @override
  String get aa1002 => 'アクセストークンの有効期限が切れました';

  @override
  String get aa1003 => 'リフレッシュトークンの有効期限が切れました';

  @override
  String get aa1004 => 'セッショントークンの有効期限が切れました';

  @override
  String get aa1005 => 'トークンが無効です';

  @override
  String get aa1006 => 'Google ID トークンが無効です';

  @override
  String get aa1007 => 'OTP を送信できません';

  @override
  String get aa1008 => 'OTP の有効期限が切れました';

  @override
  String get aa1009 => 'OTP が一致しません';

  @override
  String get aa1010 => 'このユーザーに対してサポートされていない認証方法';

  @override
  String get aa1011 => 'Kakao トークンが無効です';

  @override
  String get aa1012 => 'Naver トークンが無効です';

  @override
  String get a1001 => '内部サーバーエラー';

  @override
  String get a1002 => '無効なリクエストデータ';

  @override
  String get a1003 => 'リクエストメソッドがサポートされていません';

  @override
  String get dcrt1000 => 'カートが見つかりません';

  @override
  String get dcrt1001 => '商品の数量は在庫数以下でなければなりません';

  @override
  String get dc1000 => '二番目の深さのカテゴリーのサブカテゴリーを追加できません';

  @override
  String get dc1001 => 'サブカテゴリーの追加が許可されていません';

  @override
  String get dc1002 => 'カテゴリータイプが正しくありません';

  @override
  String get dc1003 => 'カテゴリーを削除できません';

  @override
  String get dc1004 => 'カテゴリー名を変更できません';

  @override
  String get dc1005 => 'カテゴリーが見つかりません';

  @override
  String get dcmt1000 => 'コメントが見つかりません';

  @override
  String get dcmt1001 => '親コメントが見つかりません';

  @override
  String get dcmt1002 => '編集する権限がありません';

  @override
  String get dcmt1003 => '非表示コメントに返信できません';

  @override
  String get dfvrcate1000 => 'お気に入りカテゴリーは親カテゴリーのみを受け入れます。';

  @override
  String get af1000 => 'アップロードされたファイル名が無効です';

  @override
  String get af1001 => 'ファイルタイプがサポートされていません';

  @override
  String get af1002 => 'ファイルの解析エラー';

  @override
  String get dfile1000 => 'ファイルが見つかりません';

  @override
  String get dfl1000 => '自分自身をフォローできません';

  @override
  String get dfl1001 => '自分自身をフォロー解除できません';

  @override
  String get dl1005 => 'ロケールがサポートされていません';

  @override
  String get dmp1000 => 'メインページが見つかりません';

  @override
  String get dntf1000 => '通知が見つかりません';

  @override
  String get dntfs1000 => '通知設定が見つかりません';

  @override
  String get dordd1000 => '注文詳細が見つかりません';

  @override
  String get aods1 => '注文詳細セッションが見つかりません';

  @override
  String get dord1000 => '注文に失敗しました';

  @override
  String get dord1001 => '注文が見つかりません';

  @override
  String get dord1002 => 'このユーザーに属していない注文です';

  @override
  String get dord1003 => '注文は次の注文ステータスのみキャンセルできます: 未確認 - 確認済み';

  @override
  String get dord1004 => '注文は次の注文ステータスのみキャンセルできます: 未確認 - 確認済み - 配送中';

  @override
  String get dord1005 =>
      '管理者のみが注文ステータスを次のように変更できます: 未確認 -> 確認済み -> 配送中 -> 配達済み';

  @override
  String get dord1006 => '管理者のみが注文ステータスを次のように払い戻すことができます: キャンセル -> 返金';

  @override
  String get dord1007 => '返金に失敗しました';

  @override
  String get aos1 => '注文セッションが見つかりません';

  @override
  String get aos2 => '商品の数量は在庫数以下である必要があります';

  @override
  String get dpst1000 => '投稿が見つかりません';

  @override
  String get dpst1001 => '子カテゴリーのみ受け入れる投稿';

  @override
  String get dpst1002 => '親カテゴリーのみ受け入れる投稿';

  @override
  String get dpst1003 => '投稿カテゴリーが一致しません';

  @override
  String get dpst1004 => '投稿親カテゴリーが必要です';

  @override
  String get dprd1000 => '商品が見つかりません';

  @override
  String get dpu1000 => 'プロフィールURLが見つかりません';

  @override
  String get dqa1000 => 'QnAが見つかりません';

  @override
  String get dqa1001 => '他人の QnA を削除できません';

  @override
  String get drt1000 => '評価が見つかりません';

  @override
  String get drt1001 => '他人のレビューを削除できません';

  @override
  String get drct1000 => 'リアクションが見つかりません';

  @override
  String get dsf1000 => '送料が見つかりません';

  @override
  String get dsm1000 => 'ソーシャルメディアが見つかりません';

  @override
  String get au1000 => 'ユーザーが見つかりません';

  @override
  String get du1001 => '無効なメール形式';

  @override
  String get du1002 => '無効な電話番号形式';

  @override
  String get du1003 => 'ユーザータイプがパスワードを許可しません';

  @override
  String get du1004 => 'ユーザーはすでに紹介済みのユーザーがいます';

  @override
  String get du1005 => '間違ったパスワード';

  @override
  String get du1006 => '無効なパスワード形式';

  @override
  String get du1007 => '無効なユーザー名形式';

  @override
  String get du1008 => '重複するユーザー名';

  @override
  String get du1009 => '重複するメール';

  @override
  String get du1010 => '重複するユーザー電話番号';

  @override
  String get du1011 => 'ソーシャルユーザーのメールを変更できません';

  @override
  String get du1012 => 'ソーシャルユーザーの電話番号を変更できません';

  @override
  String get du1013 => 'ユーザーは登録を完了していません';

  @override
  String get du1014 => 'ユーザーに情報補完が必要ありません';

  @override
  String get du1015 => 'ユーザーの役割が不十分です';

  @override
  String get du1016 => 'ユーザーが見つかりません';

  @override
  String get du1017 => 'システムアカウントを無効にできません';

  @override
  String get sw101 => '発行された固有キーが存在しません。';

  @override
  String get sw102 => '期限切れのキー。';

  @override
  String get sw103 => 'キー使用量が超過しました。';

  @override
  String get sw104 => '無効な送り状番号または配送会社コードの入力。';

  @override
  String get sw105 => '同じ送り状の1日のリクエスト制限を超過しました。';

  @override
  String get sw106 => '送り状番号の検索エラー。';

  @override
  String get sw500 => 'サーバーエラーです。';

  @override
  String get connectionFailure => 'サーバーに接続できません。後で再試行してください。';

  @override
  String get timeoutFailure => 'リクエストのタイムアウト';

  @override
  String get otherDioFailure => '何か問題が発生しました';

  @override
  String get convertDataFailure => 'データ変換の失敗';

  @override
  String get genericFailure => '一般的な失敗';

  @override
  String get persistentFailure => '永続的な失敗';

  @override
  String get recipient => '受取人';

  @override
  String get address => '住所';

  @override
  String get checkAuthenticationNumber => '認証番号を確認する';

  @override
  String get enterDetailedAddress => '詳細な住所を入力する';

  @override
  String get setDefaultAddress => 'デフォルトの住所を設定する';

  @override
  String get longVideo => '長い';

  @override
  String get shortVideo => '短い';

  @override
  String get reaction => '反応';

  @override
  String get viewDetails => '詳細を見る';

  @override
  String get areYouSureYouWantToCancelThisOrder => 'この注文をキャンセルしてもよろしいですか?';

  @override
  String get deliveryStatus => '配送状況';

  @override
  String get waybillNumber => '運送状番号';

  @override
  String get productAcceptance => '商品受領';

  @override
  String get productInTransit => '商品移動中';

  @override
  String get deliveryArrived => '配送到着';

  @override
  String get startDelivery => '配送開始';

  @override
  String get deliveryInformationHasNotBeenUpdated =>
      '配信情報は更新されていません。 後でもう一度試してください';

  @override
  String get dicountInvalid => '割引は注文金額の 30% を超えることはできません';

  @override
  String get payment => '支払い';

  @override
  String get inquiryHistory => 'お問い合わせ履歴';

  @override
  String get answeredInquiry => '回答済み';

  @override
  String get pending => '保留中';
}
