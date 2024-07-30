import 'package:onil/app/modules/home/infra/data/currency.dart';
import 'package:onil/app/modules/home/infra/data/user_wallet.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/rest_client_adapter.dart';

abstract class IBalanceRepository {
  Future<List<UserWallet>> getBalance();
}

class BalanceRepository implements IBalanceRepository {
  final RestClientAdapter _api;

  BalanceRepository(
    this._api
  );

  @override
  Future<List<UserWallet>> getBalance() {
    return Future.value([
      UserWallet(
        balance: 5000.0,
        currency: Currency(
          id: 1,
          name: "Real",
          code: "BRL",
          color: '#2fb183',
          decimal: 2,
          thousandsSeparator: '.',
          decimalSeparator: ',',
          actualRate: 1.0,
          status: true,
          type: 'fiat',
        ),
      ),
      UserWallet(
        balance: 1500.0,
        currency: Currency(
          id: 2,
          name: "Tether",
          code: "USDT",
          color: '#e85347',
          decimal: 2,
          thousandsSeparator: ',',
          decimalSeparator: '.',
          actualRate: 5.7,
          status: true,
          type: 'crypto',
        ),
      ),
      UserWallet(
        balance: 1,
        currency: Currency(
          id: 3,
          name: "Bitcoin",
          code: "BTC",
          color: '#f4bd0e',
          decimal: 8,
          thousandsSeparator: '',
          decimalSeparator: '.',
          actualRate: 390000,
          status: true,
          type: 'crypto',
        ),
      ),
      UserWallet(
        balance: 2000.0,
        currency: Currency(
          id: 4,
          name: "Ethereum",
          code: "ETH",
          color: '#13a5bc',
          decimal: 8,
          thousandsSeparator: '',
          decimalSeparator: '.',
          actualRate: 20000,
          status: true,
          type: 'crypto',
        ),
      ),
    ]);
  }
}