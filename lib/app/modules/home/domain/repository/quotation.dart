import 'package:onil/app/modules/home/infra/data/quotation.dart';

abstract class IQuotationRepository {
  Future<List<Quotation>> getQuotations();
}