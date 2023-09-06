import 'package:core_dependencies/core_dependencies.dart';

import '../../common/common.dart';
import '../../core/utils/utils.dart';
import '../models/models.dart';

part 'currency_converter_service.chopper.dart';

@ChopperApi(baseUrl: CurrencyEndpoints.currencyAPI)
abstract class CurrencyApiService extends ChopperService {
  static CurrencyApiService create(ApiClient client) {
    return _$CurrencyApiService(client);
  }

  @Get(path: CurrencyEndpoints.listCurrencies)
  AsyncResponse<NetworkCurrenciesResponse> listAllCurrencies();

  @Get(path: CurrencyEndpoints.convertCurrency)
  AsyncResponse<NetworkCurrencyConversionResponse> convertCurrency(
    @Query('from') String from,
    @Query('from') String to,
    @Query('from') String amount,
  );
}
