import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Chinese (`zh`).
class SZh extends S {
  SZh([String locale = 'zh']) : super(locale);

  @override
  String get home => '首页';

  @override
  String get community => '社区';

  @override
  String get forum => '论坛';

  @override
  String get store => '商店';

  @override
  String get profile => '个人资料';

  @override
  String get profileNavText => 'MY';

  @override
  String get news => 'NEWS';

  @override
  String get fullMenu => '全部菜单';

  @override
  String get bestReview => 'Best Review';

  @override
  String get pressAgainToCloseApp => '再次点击即可关闭应用程序';

  @override
  String get seeAll => '查看全部';

  @override
  String get onlineMagazine => 'ONLINE MAGAZINE';

  @override
  String get sgmNews => 'SGM NEWS';

  @override
  String get sungongMuseum => 'SUNGONG MUSEUM';

  @override
  String get communityCategory => '社区类别';

  @override
  String get bulletBoardCategory => '公告板类别';

  @override
  String get storeCategory => '商店类别';

  @override
  String get sungongMuseumKo => '成功博物馆';

  @override
  String get category => '分类';

  @override
  String get latest => '最新';

  @override
  String get popular => '热门';

  @override
  String get recommended => '推荐';

  @override
  String get compose => '撰写';

  @override
  String get bestContents => 'Best Contents';

  @override
  String get onlineMagazineKo => '在线杂志';

  @override
  String get bestReviewLower => 'Best Review';

  @override
  String get selfEmployment => '自雇';

  @override
  String get sales => '销售';

  @override
  String get houseWife => '家庭主妇';

  @override
  String get officeWorkers => '上班族';

  @override
  String get inseldeomBusiness => 'Inseldeom 业务';

  @override
  String get allPosts => '全部帖子';

  @override
  String get favoritePosts => '收藏帖子';

  @override
  String get popularPosts => '热门帖子';

  @override
  String get curator => '策展人';

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
  String get easyLoginSNS => 'SNS简易登录';

  @override
  String get signIn => '登录';

  @override
  String get register => '注册';

  @override
  String get findId => '找回ID';

  @override
  String get findPassword => '找回密码';

  @override
  String get password => '密码';

  @override
  String get username => '用户名';

  @override
  String minutesAgo(String time) {
    return '$time 分钟前';
  }

  @override
  String hoursAgo(String time) {
    return '$time 小时前';
  }

  @override
  String totalItems(int totalItems) {
    return '总计 $totalItems 个';
  }

  @override
  String get notificationAlert => '通知';

  @override
  String get ok => '确定';

  @override
  String get comment => '评论';

  @override
  String get viewProfile => '查看个人资料';

  @override
  String get writer => '作者';

  @override
  String get writeReply => '写回复';

  @override
  String get great => '很棒';

  @override
  String get joinMemberShip => '加入会员';

  @override
  String get placeHolderId => 'ID';

  @override
  String get validationId => '英文和数字，8个字符或更少';

  @override
  String get placeHolderPassword => '密码';

  @override
  String get validationPassword => '英文和数字与特殊字符混合，8-16个字符';

  @override
  String get doubleCheck => '再次确认';

  @override
  String get placeHolderConfirmPassword => '确认密码';

  @override
  String get placeHolderName => '姓名';

  @override
  String get placeHolderPhone => '电话号码';

  @override
  String get sendAuthentication => '发送认证';

  @override
  String get otpNumber => 'OTP 号码';

  @override
  String get verify => '验证';

  @override
  String get placeHolderReferrerPhoneNumber => '推荐人电话号码（可选）';

  @override
  String get usernameExisted => '该用户名已存在。';

  @override
  String get phoneNumberExisted => '该电话号码已被使用。';

  @override
  String get verifyOTPSuccess => 'OTP 验证成功';

  @override
  String get empty => '此字段不能为空。';

  @override
  String get usernameInvalid => '必须是英文字母和数字的组合，至少6个字符';

  @override
  String get passwordInvalid => '必须包含英文字母、数字和特殊字符，至少8个字符';

  @override
  String get confirmPasswordNotMatch => '密码不匹配';

  @override
  String get phoneInvalid => '电话号码格式不正确。';

  @override
  String get otpInvalid => '必须是6位数字';

  @override
  String get phoneNumberNotExisted => '该电话号码不存在于应用程序中。';

  @override
  String usernameOfPhoneNumber(String phoneNumber) {
    return '$phoneNumber的用户名为';
  }

  @override
  String couldNotLunch(String content) {
    return '我没吃午饭 $content';
  }

  @override
  String get id => '是';

  @override
  String get resetPassword => '重置密码';

  @override
  String get verifyAccountFailed => '用户名与电话号码不匹配';

  @override
  String get pleaseEnterPassword => '请输入要重置的密码。';

  @override
  String get passwordCondition => '(必须包含英文字母、数字和特殊字符，至少8个字符)';

  @override
  String get button => '按钮';

  @override
  String resetPasswordSuccess(Object phoneNumber) {
    return '$phoneNumber的密码\n已重置。';
  }

  @override
  String get productInformation => '产品信息';

  @override
  String get review => '评论';

  @override
  String get inquiry => '查询';

  @override
  String get purchaseReview => '购买评论';

  @override
  String get writeReview => '撰写评论';

  @override
  String get shoppingCart => '购物车';

  @override
  String get buyNow => '立即购买';

  @override
  String get temporaryStorage => '暂存';

  @override
  String get registration => '注册';

  @override
  String get pleaseChooseCategory => '请选择类别。';

  @override
  String get pleaseSelectSubCategory => '请选择子类别。';

  @override
  String get pleaseEnterSubject => '请输入主题。';

  @override
  String get pleaseEnterYourDetails => '请输入您的详细信息。';

  @override
  String get editPhoto => '编辑照片';

  @override
  String get notification => '通知';

  @override
  String get writeQA => '撰写咨询';

  @override
  String get qaCompleted => '已回复';

  @override
  String get qaHidden => '这是私密帖。';

  @override
  String get sendWrittenReview => '撰写评论';

  @override
  String get productRating => '商品评分';

  @override
  String get uploadImage => '上传图片';

  @override
  String get writeReviewTextBoxTitle => '写评论';

  @override
  String get writeReviewHintText => '请告诉我们您对产品的评论';

  @override
  String get takePicture => '拍照';

  @override
  String get pickFromGallery => '从相册选择';

  @override
  String get deletePicture => '删除图片';

  @override
  String get cancel => '取消';

  @override
  String get composeQA => '商品咨询';

  @override
  String get submitQA => '提交咨询';

  @override
  String get qaCategoryType => '咨询类型';

  @override
  String get qaCategoryTypePlaceHolder => '请选择';

  @override
  String get qaDetails => '咨询详情';

  @override
  String get qaDetailsHintText => '请输入咨询内容';

  @override
  String get favoriteBoard => '收藏板';

  @override
  String get follower => '粉丝';

  @override
  String get delete => '删除';

  @override
  String get followManage => '管理关注';

  @override
  String get referrerStatus => '推荐人状态';

  @override
  String get currentReferrer => '当前推荐人数';

  @override
  String numberPeople(Object number) {
    return '$number人';
  }

  @override
  String get currentReferrerList => '当前推荐人列表';

  @override
  String get next => '下一步';

  @override
  String get personalInfoTermAccept => '(必选) 同意个人信息处理政策';

  @override
  String get smTermAccept => '(必选) 同意 SuccessMania 商城使用条款';

  @override
  String get view => '查看';

  @override
  String get agreeToTermAndCond => '同意条款和条件';

  @override
  String get successSecretOfTop1 => '顶级1%的企业家分享的\n成功秘诀';

  @override
  String get termAndCondDetails => '政策和条款详情';

  @override
  String cartItemAmount(int amount) {
    return '共 $amount 件';
  }

  @override
  String get selectAll => '全选';

  @override
  String get editBusinessCard => '编辑名片';

  @override
  String get businessCardDetails => '查看名片详情';

  @override
  String get activity => '活动';

  @override
  String get followManagement => '关注管理';

  @override
  String get favoritesBulletinBoard => '收藏的公告板';

  @override
  String get curationActivities => '策展活动';

  @override
  String get communityActivities => '社区活动';

  @override
  String get myDeliveryInformation => '我的交货信息';

  @override
  String get checkOrderDeliveryDetails => '查看订单交货详情';

  @override
  String get inquiryDetails => '咨询详情';

  @override
  String get etc => '기타';

  @override
  String get recommenderStatus => '推荐人状态';

  @override
  String get entire => '全部';

  @override
  String get beforeDelivery => '未发货';

  @override
  String get shipping => '运输中';

  @override
  String get deliveryComplete => '已送达';

  @override
  String get refund => '退款';

  @override
  String get exchange => '换货';

  @override
  String get deliveryInquiry => '查询配送';

  @override
  String get orderDetails => '订单详情';

  @override
  String numberProducts(Object number) {
    return '$number件';
  }

  @override
  String get paymentInformation => '支付信息';

  @override
  String get totalProductAmount => '商品总额';

  @override
  String get deliveryFee => '运费';

  @override
  String get totalDiscountAmount => '总折扣金额';

  @override
  String get paymentAmount => '支付金额';

  @override
  String get pointAccumulation => '积分累积';

  @override
  String get paymentReceipt => '支付收据';

  @override
  String get accumulationExpected => '预计累积';

  @override
  String get ordererInformation => '订购人信息';

  @override
  String get phoneNumber => '电话号码';

  @override
  String get email => '电子邮件';

  @override
  String get deliveryInformation => '交货信息';

  @override
  String get orderPayment => '订单 / 支付';

  @override
  String get orderer => '订购人';

  @override
  String get changeAddress => '更改地址';

  @override
  String get defaultShippingAddress => '默认送货地址';

  @override
  String get addShippingAddress => '添加送货地址';

  @override
  String get add => '添加';

  @override
  String get whatYouWrote => '您所写的';

  @override
  String get postWithComment => '评论的帖子';

  @override
  String get likedPost => '点赞的帖子';

  @override
  String get justNow => '刚刚';

  @override
  String get noPost => '没有帖子';

  @override
  String get exploreOurCommunity => '探索我们的社区';

  @override
  String get exploreCurator => '探索策展人';

  @override
  String get myProfile => '我的个人资料';

  @override
  String get businessCardEdit => '名片编辑';

  @override
  String get basicInformation => '基本信息';

  @override
  String get socialMedia => '社交媒体';

  @override
  String get linkUrl => '链接 URL';

  @override
  String get snsSelect => '选择 SNS';

  @override
  String get addition => '添加';

  @override
  String get fileAttach => '附加文件';

  @override
  String get list => '列表';

  @override
  String get title => '标题';

  @override
  String get imageFile => '图像文件';

  @override
  String get deletePhoto => '删除照片';

  @override
  String get changePhoto => '更改照片';

  @override
  String get follow => '关注';

  @override
  String get following => '正在关注';

  @override
  String get setting => '设置';

  @override
  String get accountInformationManagement => '帐户信息管理';

  @override
  String get notificationSettings => '通知设置';

  @override
  String get languageSettings => '语言设置';

  @override
  String get korean => '韩语';

  @override
  String get usagePolicy => '使用政策';

  @override
  String get logout => '注销';

  @override
  String get edit => '编辑';

  @override
  String get withdrawal => '退出会员';

  @override
  String get save => '保存';

  @override
  String get changePassword => '修改密码';

  @override
  String get editCellPhoneNumber => '编辑手机号码';

  @override
  String get followNewPostNotification => '关注新帖子通知';

  @override
  String get commentAlert => '评论提醒';

  @override
  String get likeAlert => '点赞提醒';

  @override
  String get termAndPolicyConditions => '使用政策和条款';

  @override
  String get currentPassword => '当前密码';

  @override
  String get passwordToChange => '要更改的密码';

  @override
  String get change => '更改';

  @override
  String get changePhoneNumber => '更改电话号码';

  @override
  String get recentSearches => '最近搜索';

  @override
  String get clearAllHistory => '清除所有历史记录';

  @override
  String get someThingWentWrong => '出了点问题。';

  @override
  String get addThumbnail => '添加缩略图';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get someError => '发生了一些错误。';

  @override
  String get general => '一般';

  @override
  String get product => '产品';

  @override
  String get quality => '质量';

  @override
  String get warranty => '保修';

  @override
  String get loginAndSignUp => '登录和注册';

  @override
  String get youNeedToLoginToAccessThisContent => '您需要登录才能访问此内容';

  @override
  String get goToLoginPage => '前往登录页面';

  @override
  String get pleaseLoginToViewRegisteredInformation => '请登录以查看已注册的信息。';

  @override
  String get alertProductAddedToCart => '已添加到购物车的产品';

  @override
  String get orderProduct => '订购产品';

  @override
  String get addressSearch => '地址搜索';

  @override
  String totalPrice(Object price, Object totalProduct) {
    return '共 $totalProduct件 $price韩元';
  }

  @override
  String totalPriceWithoutNumber(Object price) {
    return '支付 $price韩元';
  }

  @override
  String get orderProductAgree => '我已确认并同意订单产品的产品名称、价格和交货信息。';

  @override
  String get addToCart => '添加到购物车';

  @override
  String get leaveAComment => '留下评论';

  @override
  String get replyingTo => '回复给：';

  @override
  String get editingComment => '编辑评论...';

  @override
  String get noFollowers => '无关注者';

  @override
  String get noFollowings => '没有关注';

  @override
  String get paymentFailedMessage => '支付失败。\n请重试。';

  @override
  String get paymentSuccessMessage => '支付成功。\n感谢您的订单。';

  @override
  String get apply => '申请';

  @override
  String get noPostDisplayed => '没有显示的帖子。';

  @override
  String get urlInvalid => '无效的URL。';

  @override
  String get copiedToClipboard => '已复制到剪贴板。';

  @override
  String get invalidEmailFormat => '无效的电子邮件格式';

  @override
  String get areYouSureYouWantToUnregister => '您确定要取消注册吗？';

  @override
  String get areYouSureYouWantToDelete => '您确定要删除吗？';

  @override
  String get inquiryCategory => '查询类别';

  @override
  String get answerComplete => '回答完成';

  @override
  String get emptyList => '空';

  @override
  String get savePostSuccess => '帖子已保存';

  @override
  String get unconfirmed => '未确认';

  @override
  String get confirmed => '已确认';

  @override
  String get delivered => '已交付';

  @override
  String get informationSupplement => '资料补充';

  @override
  String get commentMyPost => '评论';

  @override
  String get followingUploadPost => '最新帖子';

  @override
  String get reactMyPost => '反应';

  @override
  String get shareSuccessfully => '分享成功';

  @override
  String get daddrs1000 => '找不到地址';

  @override
  String get aa1000 => '找不到用户';

  @override
  String get aa1001 => '访问被拒绝';

  @override
  String get aa1002 => '访问令牌已过期';

  @override
  String get aa1003 => '刷新令牌已过期';

  @override
  String get aa1004 => '会话令牌已过期';

  @override
  String get aa1005 => '令牌无效';

  @override
  String get aa1006 => 'Google ID 令牌无效';

  @override
  String get aa1007 => '无法发送 OTP';

  @override
  String get aa1008 => 'OTP 已过期';

  @override
  String get aa1009 => 'OTP 不匹配';

  @override
  String get aa1010 => '此用户不支持的身份验证方法';

  @override
  String get aa1011 => 'Kakao 令牌无效';

  @override
  String get aa1012 => 'Naver 令牌无效';

  @override
  String get a1001 => '内部服务器错误';

  @override
  String get a1002 => '无效的请求数据';

  @override
  String get a1003 => '不支持的请求方法';

  @override
  String get dcrt1000 => '找不到购物车';

  @override
  String get dcrt1001 => '产品数量必须小于或等于库存数量';

  @override
  String get dc1000 => '不能添加第二级分类的子分类';

  @override
  String get dc1001 => '不允许添加子分类';

  @override
  String get dc1002 => '分类类型不正确';

  @override
  String get dc1003 => '不能删除分类';

  @override
  String get dc1004 => '不能更改分类名称';

  @override
  String get dc1005 => '找不到分类';

  @override
  String get dcmt1000 => '找不到评论';

  @override
  String get dcmt1001 => '找不到父评论';

  @override
  String get dcmt1002 => '无权编辑';

  @override
  String get dcmt1003 => '不能回复隐藏评论';

  @override
  String get dfvrcate1000 => '只接受父类别的收藏类别';

  @override
  String get af1000 => '上传的文件名无效';

  @override
  String get af1001 => '不支持的文件类型';

  @override
  String get af1002 => '文件解析错误';

  @override
  String get dfile1000 => '找不到文件';

  @override
  String get dfl1000 => '不能关注自己';

  @override
  String get dfl1001 => '不能取消关注自己';

  @override
  String get dl1005 => '不支持的区域设置';

  @override
  String get dmp1000 => '找不到主页';

  @override
  String get dntf1000 => '找不到通知';

  @override
  String get dntfs1000 => '找不到通知设置';

  @override
  String get dordd1000 => '找不到订单详情';

  @override
  String get aods1 => '找不到订单详情会话';

  @override
  String get dord1000 => '订单失败';

  @override
  String get dord1001 => '找不到订单';

  @override
  String get dord1002 => '订单不属于此用户';

  @override
  String get dord1003 => '只能取消订单状态为：未确认 - 已确认';

  @override
  String get dord1004 => '只能取消订单状态为：未确认 - 已确认 - 交付';

  @override
  String get dord1005 => '管理员只能按顺序更改订单状态：未确认 -> 已确认 -> 交付 -> 已交付';

  @override
  String get dord1006 => '管理员只能按顺序退款订单状态：取消 -> 退款';

  @override
  String get dord1007 => '退款失败';

  @override
  String get aos1 => '找不到订单会话';

  @override
  String get aos2 => '产品数量必须小于或等于库存数量';

  @override
  String get dpst1000 => '找不到帖子';

  @override
  String get dpst1001 => '只接受子类别的帖子';

  @override
  String get dpst1002 => '只接受父类别的帖子';

  @override
  String get dpst1003 => '帖子类别不匹配';

  @override
  String get dpst1004 => '帖子父类别必填';

  @override
  String get dprd1000 => '找不到产品';

  @override
  String get dpu1000 => '找不到个人资料网址';

  @override
  String get dqa1000 => '找不到问答';

  @override
  String get dqa1001 => '不能删除他人的问答';

  @override
  String get drt1000 => '找不到评分';

  @override
  String get drt1001 => '不能删除他人的评价';

  @override
  String get drct1000 => '找不到反应';

  @override
  String get dsf1000 => '找不到运费';

  @override
  String get dsm1000 => '找不到社交媒体';

  @override
  String get au1000 => '找不到用户';

  @override
  String get du1001 => '无效的电子邮件格式';

  @override
  String get du1002 => '无效的电话号码格式';

  @override
  String get du1003 => '用户类型不允许使用密码';

  @override
  String get du1004 => '用户已经推荐过其他用户';

  @override
  String get du1005 => '密码错误';

  @override
  String get du1006 => '无效的密码格式';

  @override
  String get du1007 => '无效的用户名格式';

  @override
  String get du1008 => '重复的用户名';

  @override
  String get du1009 => '重复的电子邮件';

  @override
  String get du1010 => '重复的用户电话号码';

  @override
  String get du1011 => '无法更改社交用户的电子邮件';

  @override
  String get du1012 => '无法更改社交用户的电话号码';

  @override
  String get du1013 => '用户未完成注册';

  @override
  String get du1014 => '用户不需要补充信息';

  @override
  String get du1015 => '用户角色不足';

  @override
  String get du1016 => '找不到用户';

  @override
  String get du1017 => '无法停用系统帐户';

  @override
  String get sw101 => '发行的唯一密钥不存在。';

  @override
  String get sw102 => '密钥已过期。';

  @override
  String get sw103 => '超出密钥使用限制。';

  @override
  String get sw104 => '无效的运单号或快递公司代码输入。';

  @override
  String get sw105 => '超过同一运单的每日请求限制。';

  @override
  String get sw106 => '运单号查询错误。';

  @override
  String get sw500 => '服务器错误。';

  @override
  String get connectionFailure => '无法连接到服务器。请稍后再试。';

  @override
  String get timeoutFailure => '请求超时';

  @override
  String get otherDioFailure => '出现了一些问题';

  @override
  String get convertDataFailure => '数据转换失败';

  @override
  String get genericFailure => '通用失败';

  @override
  String get persistentFailure => '持续失败';

  @override
  String get recipient => '收件人';

  @override
  String get address => '地址';

  @override
  String get checkAuthenticationNumber => '检查验证码';

  @override
  String get enterDetailedAddress => '输入详细地址';

  @override
  String get setDefaultAddress => '设置默认地址';

  @override
  String get longVideo => '長い';

  @override
  String get shortVideo => '短い';

  @override
  String get reaction => '反応';

  @override
  String get viewDetails => '查看详细信息';

  @override
  String get areYouSureYouWantToCancelThisOrder => '您确定要取消此订单吗？';

  @override
  String get deliveryStatus => '配送状态';

  @override
  String get waybillNumber => '运单号';

  @override
  String get productAcceptance => '商品接收';

  @override
  String get productInTransit => '商品运送中';

  @override
  String get deliveryArrived => '送货抵达';

  @override
  String get startDelivery => '开始配送';

  @override
  String get deliveryInformationHasNotBeenUpdated => '送货信息尚未更新。 请稍后再试';

  @override
  String get dicountInvalid => '折扣不能超过订单价值的 30%';

  @override
  String get payment => '付款';

  @override
  String get inquiryHistory => '查询历史';

  @override
  String get answeredInquiry => '已答复';

  @override
  String get pending => '待处理';
}
