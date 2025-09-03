class PmocktailModel {
  String? strDrink;
  String? strDrinkThumb;

  PmocktailModel(
      {
        this.strDrink,
        this.strDrinkThumb,
       });

  PmocktailModel.fromJson(Map<String, dynamic> json) {
    strDrink = json['strDrink'];
    strDrinkThumb = json['strDrinkThumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['strDrink'] = this.strDrink;
    data['strDrinkThumb'] = this.strDrinkThumb;
    return data;
  }
}