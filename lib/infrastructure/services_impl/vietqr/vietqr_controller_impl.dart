import 'package:study_mentor_mobile/application/services/vietqr/request/src/check_account_bank_request.dart';
import 'package:study_mentor_mobile/application/services/vietqr/response/src/check_account_bank_response.dart';
import 'package:study_mentor_mobile/application/services/vietqr/response/src/get_list_banks_response.dart';

import '../../../application/services/common/common.dart';
import '../../../application/services/vietqr/controller/controller.dart';
import '../../../utilities/failure/failure.dart';
import '../../../utilities/result/result.dart';
import '../../data_source_error_handler_mixin.dart';
import 'data_source.dart';

class VietqrControllerImpl with VietqrController, DataSourceErrorHandler {
  const VietqrControllerImpl({
    required this.vietqrDataSource,
  });

  final VietqrDataSource vietqrDataSource;

  @override
  Future<Result<Failure, BaseResponse<List<Bank>>>> getListBank() {
    return handleApiResult(future: () => vietqrDataSource.getListBank());
  }

  @override
  Future<Result<Failure, CheckAccountBankResponse>> checkAccountBank(
      {required CheckAccountBankRequest checkAccountBankRequest}) {
    return handleApiResult(
        future: () =>
            vietqrDataSource.checkAccountBank(checkAccountBankRequest));
  }
}
