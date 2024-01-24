import 'dart:math';

import 'package:currency_converter/exchange_rate.dart';

class ExchangeRateApi {
  List<ExchangeRate> getExchangeRage() => _loadExchangeRates();
  Future<List<ExchangeRate>> loadExchangeRate() =>
      Future.delayed(const Duration(seconds: 1), () => _returnListOrError());

  Future<List<ExchangeRate>> _returnListOrError() {
    Random r = Random();
    int randomValue = r.nextInt(100);
    if (randomValue < 75) {
      return Future(() => _loadExchangeRates());
    } else {
      return Future(() => throw Exception("Fake Exception"));
    }
  }

  List<ExchangeRate> _loadExchangeRates() => [
        ExchangeRate("GBP", 0.79),
        ExchangeRate("EUR", 0.92),
        ExchangeRate("USD", 1.0),
      ];
}
