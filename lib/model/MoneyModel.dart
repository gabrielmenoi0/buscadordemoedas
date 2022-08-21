/// classe modelo das informações retornadas do controller(API)
class MoneyModel {
  USDBRL? uSDBRL;
  USDBRL? eURBRL;
  USDBRL? bTCBRL;
  ///contrutor
  MoneyModel({this.uSDBRL, this.eURBRL, this.bTCBRL});
  MoneyModel.fromJson(Map<String, dynamic> json) {
    uSDBRL =
        json['USDBRL'] != null ? new USDBRL.fromJson(json['USDBRL']) : null;
    eURBRL =
        json['EURBRL'] != null ? new USDBRL.fromJson(json['EURBRL']) : null;
    bTCBRL =
        json['BTCBRL'] != null ? new USDBRL.fromJson(json['BTCBRL']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.uSDBRL != null) {
      data['USDBRL'] = this.uSDBRL!.toJson();
    }
    if (this.eURBRL != null) {
      data['EURBRL'] = this.eURBRL!.toJson();
    }
    if (this.bTCBRL != null) {
      data['BTCBRL'] = this.bTCBRL!.toJson();
    }
    return data;
  }
}

class USDBRL {
  String? code;
  String? codein;
  String? name;
  String? high;
  String? low;
  String? varBid;
  String? pctChange;
  String? bid;
  String? ask;
  String? timestamp;
  String? createDate;

  USDBRL(
      {this.code,
      this.codein,
      this.name,
      this.high,
      this.low,
      this.varBid,
      this.pctChange,
      this.bid,
      this.ask,
      this.timestamp,
      this.createDate});

  USDBRL.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    codein = json['codein'];
    name = json['name'];
    high = json['high'];
    low = json['low'];
    varBid = json['varBid'];
    pctChange = json['pctChange'];
    bid = json['bid'];
    ask = json['ask'];
    timestamp = json['timestamp'];
    createDate = json['create_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['codein'] = this.codein;
    data['name'] = this.name;
    data['high'] = this.high;
    data['low'] = this.low;
    data['varBid'] = this.varBid;
    data['pctChange'] = this.pctChange;
    data['bid'] = this.bid;
    data['ask'] = this.ask;
    data['timestamp'] = this.timestamp;
    data['create_date'] = this.createDate;
    return data;
  }
}
