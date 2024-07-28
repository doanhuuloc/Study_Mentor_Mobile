import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class SVi extends S {
  SVi([String locale = 'vi']) : super(locale);

  @override
  String couldNotLunch(String content) {
    return 'I couldn\'t have launch $content';
  }

  @override
  String get loginAndSignUp => 'Đăng nhập/Đăng ký';

  @override
  String get email => 'Email';

  @override
  String get password => 'Mật khẩu';

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get register => 'Đăng ký';

  @override
  String get findPassword => 'Quên mật khẩu';

  @override
  String get pressAgainToCloseApp => 'Press again to close the app.';

  @override
  String hoursAgo(String time) {
    return '$time giờ trước';
  }

  @override
  String minutesAgo(String time) {
    return '$time phút trước';
  }

  @override
  String get justNow => 'Bây giờ';

  @override
  String get pleaseLoginToViewRegisteredInformation => 'Vui lòng đăng nhập để tiếp tục sử dụng tính năng của ứng dụng. Bạn có muốn đăng nhập không?';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Hủy';

  @override
  String get emptyList => 'Rỗng';

  @override
  String get connectionFailure => 'Không thể kết nối với máy chủ. Vui lòng thử lại sau';

  @override
  String get timeoutFailure => 'Đã quá thời gian yêu cầu dữ liệu';

  @override
  String get otherDioFailure => 'Có gì đó sai sót';

  @override
  String get convertDataFailure => 'Chuyển đổi dữ liệu thất bại';

  @override
  String get genericFailure => 'Lỗi';

  @override
  String get persistentFailure => 'Lỗi';

  @override
  String get notificationAlert => 'Thông báo';

  @override
  String get passwordInvalid => 'Bao gồm chữ in hoa, ký tự đặc biệt và ít nhất 8 ký tự.';

  @override
  String get confirmPasswordNotMatch => 'Mật khẩu không khớp';

  @override
  String get phoneInvalid => 'Số điện thoại không hợp lệ';

  @override
  String get otpInvalid => '6-digit number allowed';

  @override
  String get phoneNumberNotExisted => 'Số điện thoại không tồn tại';

  @override
  String get takePicture => 'Chụp ảnh';

  @override
  String get pickFromGallery => 'Chọn từ thư viện';

  @override
  String get someThingWentWrong => 'Có gì đó không đúng';

  @override
  String get deletePhoto => 'Xóa ảnh';

  @override
  String get compose => 'Compose';

  @override
  String get empty => 'Ô này không được để trống';

  @override
  String get usernameInvalid => 'Combination of alphanumeric, minimum 6 characters';

  @override
  String numberProducts(Object number) {
    return '$number items';
  }

  @override
  String get changeYourPassword => 'Thay đổi mật khẩu của bạn';

  @override
  String get oldPassword => 'Mật khẩu cũ';

  @override
  String get newPasssword => 'Mật khẩu mới';

  @override
  String get change => 'Thay đổi';

  @override
  String get editProfile => 'Thay đổi thông tin cá nhân';

  @override
  String get fullname => 'Họ và tên';

  @override
  String get phone => 'Số điện thoại';

  @override
  String get gender => 'Giới tính';

  @override
  String get male => 'Nam';

  @override
  String get female => 'Nữ';

  @override
  String get dateOfbirth => 'Ngày sinh';

  @override
  String get save => 'Lưu';

  @override
  String get loginYourAccount => 'Đăng nhập tài khoản của bạn';

  @override
  String get socialAccountLogin => 'Đăng nhập bằng tài khoản mạng xã hội';

  @override
  String get google => 'Google';

  @override
  String get turnOn => 'Bật';

  @override
  String get turnOff => 'Tắt';

  @override
  String get vietnamese => 'Tiếng Việt';

  @override
  String get english => 'English';

  @override
  String get account => 'Tài khoản';

  @override
  String get changePassword => 'Thay đổi mật khẩu';

  @override
  String get settings => 'Cài đặt';

  @override
  String get languages => 'Ngôn ngữ';

  @override
  String get notification => 'Thông báo';

  @override
  String get theme => 'Chủ đề';

  @override
  String get light => 'Sáng';

  @override
  String get dark => 'Báoi';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get registerYourAccount => 'Đăng ký tài khoản của bạn';

  @override
  String get socialAccountRegister => 'Đăng ký bằng tải khoản mạng xã hội';

  @override
  String get resetPassword => 'Đặt lại mật khẩu';

  @override
  String get reset => 'Đặt lại';

  @override
  String get libraryPicture => ' Thư viện ảnh';

  @override
  String get chooseFile => 'Chọn file';

  @override
  String get history => 'Lịch sử';

  @override
  String get aISystem => 'AI hệ thống';

  @override
  String get instructor => 'Người hướng dẫn';

  @override
  String get emptyChatAI => 'Bạn không có đoạn hội thoại nào với AI';

  @override
  String get neW => 'Mới';

  @override
  String get accepted => 'Đã chấp nhận';

  @override
  String get answered => 'Đã trả lời';

  @override
  String get done => 'Hoàn thành';

  @override
  String get expired => 'Hết hạn';

  @override
  String get question => 'Câu hỏi';

  @override
  String get findingIntructor => 'Đang tìm người hướng dẫn';

  @override
  String get emptyQuestion => 'Bạn không có câu hỏi nào tại trạng thái hiện tại';

  @override
  String get fullAI => 'Tất cả AI';

  @override
  String get aIFree => 'AI miễn phí';

  @override
  String get aIUpgrade => 'AI nâng cấp';

  @override
  String get qAviaFile => 'Hỏi đáp qua file';

  @override
  String get intructorAnswerQuestion => 'Người hướng dẫn sẽ giúp bạn trả lời câu hỏi';

  @override
  String get ggMeet => 'Google meet';

  @override
  String get intructorGGmeet => 'Người hướng dẫn sẽ trả lời câu hỏi trực tiếp thông google meet';

  @override
  String get helloEveryone => 'Xin chào mọi người';

  @override
  String get letDiscover => 'Hãy khám phá';

  @override
  String get homePage => 'Trang chủ';

  @override
  String get createQuestion => 'Đặt câu hỏi';

  @override
  String get titleQuestion => 'Tiêu đề câu hỏi';

  @override
  String get contentQuestion => 'Nội dung câu hỏi';

  @override
  String get fileQuestion => 'File câu hỏi';

  @override
  String get questionLevel => 'Cấp độ câu hỏi';

  @override
  String get grade => 'Khối lớp';

  @override
  String get subject => 'Môn học';

  @override
  String get askForStar => 'Yêu cầu số sao người hướng dẫn';

  @override
  String get star => 'star';

  @override
  String get timeFindIntructor => 'Thời gian tìm người hướng dẫn';

  @override
  String minute(String minute) {
    return '$minute phút';
  }

  @override
  String hour(String hour) {
    return '$hour giờ';
  }

  @override
  String get timeAnswerQuestion => 'Thời gian giải đáp câu hỏi';

  @override
  String get voucher => 'Mã khuyến mãi';

  @override
  String get emptyVoucher => 'Bạn không có bất kỳ mã khuyến mãi nào';

  @override
  String get paymentInfomation => 'Thông tin thanh toán';

  @override
  String get totalPayment => 'Tổng tiền thanh toán';

  @override
  String get voucherDiscount => 'Mã khuyến mãi giảm giá';

  @override
  String get total => 'Tổng tiền';

  @override
  String pay(String money) {
    return 'Thanh toán $money';
  }

  @override
  String get detailedQuestion => 'Chi tiết câu hỏi';

  @override
  String get findIntructor => 'Tìm người hướng dẫn';

  @override
  String get goHomePage => 'Về trang chủ';

  @override
  String get ggmeetLink => 'Thông tin google meet';

  @override
  String get questionInfomation => 'Thông tin câu hỏi';

  @override
  String get answeredInfomation => 'Thông tin câu trả lời';

  @override
  String get intructorAnsweringQuestion => 'Người hướng dẫn đang trả lời câu hỏi';

  @override
  String get attachments => 'Tệp đính kèm';

  @override
  String get joinGGMeet => 'Vui lòng tham gia link google meet bên dưới để cùng với người hướng dẫn trả lời câu hỏi của bạn';

  @override
  String get reivew => 'Đánh giá';

  @override
  String get send => 'Gữi';

  @override
  String get subjectQuestion => 'Môn học: ';

  @override
  String get price => 'Giá: ';

  @override
  String get systemFindIntructor => 'Hệ thống tự động tìm kiếm người hướng dẫn';

  @override
  String get find => 'Tìm';

  @override
  String get suggestedInstructor => 'Người hướng dẫn được gợi ý';

  @override
  String get systemFindSuitableIntuctor => 'Hệ thống đang tìm kiếm người hướng dẫn phù hợp cho bạn';

  @override
  String get pleaseWait => 'Vui lòng một lát nhé';

  @override
  String get cancelFind => 'Hủy tìm kiếm';

  @override
  String get intructor => 'Người hướng dẫn';

  @override
  String get rejectAnswered => 'Người hướng dẫn từ chối trả lời câu hỏi của bạn';

  @override
  String get personalInfomation => 'Thông tin cá nhân';

  @override
  String get reportIntructor => 'Báo cáo người hướng dẫn';

  @override
  String get reportContent => 'Nội dung báo cáo';

  @override
  String get reportFile => 'File báo cáo';

  @override
  String get accept => 'Chập nhận';

  @override
  String get report => 'Báo cáo';

  @override
  String get errMess400002 => 'Tài khoản đã tồn tại';

  @override
  String get errMess400003 => 'Câu hỏi này đã được đánh giá';

  @override
  String get errMess400004 => 'Câu hỏi này đã trả lời';

  @override
  String get errMess400005 => 'Mã khuyến mãi không hợp lệ';

  @override
  String get errMess400006 => 'Trạng thái câu hỏi không hợp lệ';

  @override
  String get errMess401 => 'Tài khoản không truy cập được';

  @override
  String get errMess400001 => 'Người hướng dẫn phải được phê duyệt trước khi cập nhật giáo dục quan tâm';

  @override
  String get errMess401001 => 'refresh token is used or not exist';

  @override
  String get errMess401002 => 'refreshToken is required';

  @override
  String get errMess401003 => 'accessToken is required';

  @override
  String get errMess401004 => 'accessToken verify failed';

  @override
  String get errMess401005 => 'Tài khoản hoặc mật khẩu không đúng';

  @override
  String get errMess401006 => 'Mật khẩu không đúng';

  @override
  String get errMess404001 => 'Không tìm thấy tài khoản';

  @override
  String get errMess404002 => 'không tìm thấy danh sách phòng chat';

  @override
  String get errMess404003 => 'Không tìm thấy môn học này';

  @override
  String get errMess404004 => 'Không tìm thấy câu hỏi này';

  @override
  String get errMess404005 => 'Không tìm thấy phòng chat này';

  @override
  String get errMess404006 => 'Không tìm thấy google meet';

  @override
  String get errMess404007 => 'Không tìm thấy cấp độ câu hỏi';

  @override
  String get errMess404008 => 'Không tìm thấy học sinh';

  @override
  String get errMess404009 => 'Không tìm thấy người hướng dẫn';

  @override
  String get errMess403001 => 'Bạn không có quyền truy cập hành động này';

  @override
  String get errMess403002 => 'Bạn không được phép truy cập vào câu hỏi này';

  @override
  String get errMess403003 => 'Tài khoản không hoạt động';

  @override
  String get errMess409001 => 'Câu hỏi này đã được báo cáo';

  @override
  String get errMess409002 => 'Câu hỏi này đã được trả phí';

  @override
  String get errMess500 => 'Máy chủ đang gặp vấn đề';

  @override
  String get pickFile => 'Chọn tập tin';

  @override
  String get daily => 'Gói ngày (1 ngày)';

  @override
  String get weekly => 'Gói tuần (7 ngày)';

  @override
  String get monthly => ' Gói tháng (30 ngày)';

  @override
  String get yearly => 'Gói năm (365 ngày)';

  @override
  String get membershipPayAI => 'Gói sử dụng AI hệ thống';

  @override
  String get reportSuccess => 'Báo cáo của bạn được gữi thành công';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get selectTutorSuccess => 'Chọn người hướng dẫn thành công';

  @override
  String intructorSelectQuestion(String intructor, String question, String price) {
    return 'Người hướng dẫn $intructor bạn chọn đã chấp nhận câu hỏi với tiêu đề $question với giá $price';
  }

  @override
  String get editProfileSuccess => 'Thay đổi thông tin cá nhân thành công';

  @override
  String get wattingIntructorAccepted => 'Bạn đang đợi người hướng dẫn chấp nhận trả lời câu hỏi của bạn';

  @override
  String chooseIntructorToAnswer(String name) {
    return 'Bạn có muốn chọn $name trả lời câu hỏi của bạn';
  }

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get chooseIntructor => 'Chọn người hướng dẫn';

  @override
  String rejectToAnswer(String name) {
    return '$name đã từ chối trả lời câu hỏi của bạn';
  }

  @override
  String wattingAccepted(String name) {
    return 'Vui lòng đợi $name chấp nhận';
  }

  @override
  String numStart(String star) {
    return '$star sao';
  }

  @override
  String get loadScreen => 'Nếu bạn đã thanh toán vui lòng tải lại màn hình';
}
