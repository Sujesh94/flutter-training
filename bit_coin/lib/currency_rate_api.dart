import 'package:http/http.dart' as http;
import 'dart:convert';
import 'price_screen.dart';
class CurrencyRate{
  String selectedCurrency;
 CurrencyRate(this.selectedCurrency);

Future getBITCoinExchangeRate()async{
    http.Response response=await http.get('https://rest.coinapi.io/v1/exchangerate/BTC/$selectedCurrency?apikey=B40EECA2-A478-4A4C-8E4D-FB98DC029008');
    var exchangeRate=jsonDecode(response.body);
    return exchangeRate;
  }
  Future getETHExchangeRate()async{
    http.Response response=await http.get('https://rest.coinapi.io/v1/exchangerate/ETH/$selectedCurrency?apikey=B40EECA2-A478-4A4C-8E4D-FB98DC029008');
    var exchangeRate=jsonDecode(response.body);
    return exchangeRate;
  }
  Future getLTCExchangeRate()async{
    http.Response response=await http.get('https://rest.coinapi.io/v1/exchangerate/LTC/$selectedCurrency?apikey=B40EECA2-A478-4A4C-8E4D-FB98DC029008');
    var exchangeRate=jsonDecode(response.body);
    return exchangeRate;
  }
}