import 'package:onil/app/modules/home/infra/data/quotation.dart';
import 'package:onil/app/modules/home/infra/repository/quotation_repository.dart';

class QuotationUseCase {
  final IQuotationRepository repository;

  QuotationUseCase(this.repository);

  Future<List<Quotation>> getQuotations() async {
    return repository.getQuotations();
  }
}