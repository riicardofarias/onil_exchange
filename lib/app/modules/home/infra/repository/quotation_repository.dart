import 'package:onil/app/modules/home/domain/repository/quotation.dart';
import 'package:onil/app/modules/home/infra/data/quotation.dart';
import 'package:onil/app/shared/adapters/rest_client_adapter/rest_client_adapter.dart';

class QuotationRepository extends IQuotationRepository {
  final RestClientAdapter _api;

  QuotationRepository(this._api);

  @override
  Future<List<Quotation>> getQuotations() {
    return Future.value(
      [
        Quotation(
          coin: "Bitcoin",
          amount: "\$ 60.325,32",
        ),
        Quotation(
          coin: "Ethereum",
          amount: "\$ 3.350,73",
        ),
      ]
    );
  }
}