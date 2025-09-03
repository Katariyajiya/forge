class MocktaiilModel {
  String? strDrink;
  String? strInstructions;
  String? strDrinkThumb;

  MocktaiilModel(
      {
        this.strDrink,
        this.strInstructions,
        this.strDrinkThumb,
      });

  MocktaiilModel.fromJson(Map<String, dynamic> json) {
    strDrink = json['strDrink'];
    strInstructions = json['strInstructions'];
    strDrinkThumb = json['strDrinkThumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['strDrink'] = this.strDrink;
    data['strInstructions'] = this.strInstructions;
    data['strDrinkThumb'] = this.strDrinkThumb;
    return data;
  }
}