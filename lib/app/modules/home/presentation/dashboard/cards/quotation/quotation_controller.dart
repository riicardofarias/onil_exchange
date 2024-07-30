import 'package:get/get.dart';
import 'package:onil/app/modules/home/domain/repository/quotation.dart';
import 'package:onil/app/modules/home/infra/data/quotation.dart';

class QuotationController extends GetxController with StateMixin<List<Quotation>> {
  final IQuotationRepository _quotationRepository;

  QuotationController(this._quotationRepository);

  @override
  void onReady() {
    _getQuotations();
  }

  Future<void> _getQuotations() async {
    final quotations = await _quotationRepository.getQuotations();
    change(quotations, status: RxStatus.success());
  }
}