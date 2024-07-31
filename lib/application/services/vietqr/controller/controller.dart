import '../../../../utilities/failure/failure.dart';
import '../../../../utilities/result/result.dart';
import '../../common/common.dart';
import '../request/request.dart';
import '../response/response.dart';

mixin VietqrController {
  Future<Result<Failure, BaseResponse<List<Bank>>>> getListBank();
  Future<Result<Failure, CheckAccountBankResponse>> checkAccountBank(
      {required CheckAccountBankRequest checkAccountBankRequest});
}
