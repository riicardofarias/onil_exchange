import 'package:get/get.dart';
import 'package:onil/app/modules/home/domain/repository/balance.dart';
import 'package:onil/app/modules/home/infra/data/user_wallet.dart';

class BalanceController extends GetxController with StateMixin<List<UserWallet>> {
  final IBalanceRepository _balanceRepository;

  BalanceController(this._balanceRepository);

  @override
  void onReady() {
    _getBalance();
  }

  Future<void> _getBalance() async {
    final userWallets = await _balanceRepository.getBalance();
    change(userWallets, status: RxStatus.success());
  }
}