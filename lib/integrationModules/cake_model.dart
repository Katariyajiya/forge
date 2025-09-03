class CakeModel {
  String? strMeal;
  String? strInstructions;
  String? strMealThumb;
  CakeModel(
      {
        this.strMeal,
        this.strInstructions,
        this.strMealThumb,
       });
  CakeModel.fromJson(Map<String, dynamic> json) {
    strMeal = json['strMeal'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['strMeal'] = this.strMeal;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    return data;
  }
}