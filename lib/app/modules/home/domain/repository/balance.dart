import 'package:onil/app/modules/home/infra/data/user_wallet.dart';

abstract class IBalanceRepository {
  Future<List<UserWallet>> getBalance();
}