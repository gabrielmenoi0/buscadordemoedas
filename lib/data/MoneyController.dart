import 'dart:convert';
import 'package:money_search/data/api.dart';
import 'package:money_search/model/MoneyModel.dart';

class MoneyController {
  /// instancia da classe do DIO
  final api = API();
  /// metodo que busca as informações
  Future<MoneyModel?> getMoney () async {
    try {
      /// metodo get da requisição
      final response = await api.get(
          "https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL");

      /// validação de resosta correta
      if(response?.statusCode == 200){
        return MoneyModel.fromJson(json.decode(json.encode(response?.data)));
      }else{
        return null;
      }

    } catch (e, s) {
      print(e);
      print(s);
      throw (e);
    }
  }
}
