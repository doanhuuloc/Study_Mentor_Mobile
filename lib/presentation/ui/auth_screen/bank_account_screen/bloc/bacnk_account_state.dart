import '../../../../../application/services/vietqr/response/response.dart';

class BankAccountState {
  const BankAccountState({
    this.loading = false,
    this.banks,
    this.selectedBank,
    this.accountNumberBank,
    this.accountNameBank,
  });
  final bool loading;
  final List<Bank>? banks;
  final Bank? selectedBank;
  final String? accountNumberBank;
  final String? accountNameBank;

  bool get canSubmit {
    return selectedBank != null ||
        selectedBank != const Bank() ||
        accountNumberBank != "" ||
        accountNumberBank != null;
  }

  BankAccountState copyWith({
    bool? loading,
    List<Bank>? banks,
    Bank? selectedBank,
    String? accountNumberBank,
    String? accountNameBank,
  }) {
    return BankAccountState(
      loading: loading ?? this.loading,
      banks: banks ?? this.banks,
      selectedBank: selectedBank ?? this.selectedBank,
      accountNumberBank: accountNumberBank ?? this.accountNumberBank,
      accountNameBank: accountNameBank ?? this.accountNameBank,
    );
  }
}
