import 'package:base_struct/core/helper/enums/balance_enums.dart';

class GetBalance {
  final double balance;
  final int id;

  GetBalance(this.id, {required this.balance});

  BalanceEnums get balanceType {
    if (balance > 0) {
      return BalanceEnums.CREDIT;
    } else if (balance < 0) {
      return BalanceEnums.DEBIT;
    } else {
      return BalanceEnums.NEUTRAL;
    }
  }
}
