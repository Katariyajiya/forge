class SinglePostModel {
  int? id;
  String? name;
  List<String>? ingredients;
  List<String>? instructions;
  int? userId;
  String? image;
  List<String>? mealType;

  SinglePostModel(
      {this.id,
        this.name,
        this.ingredients,
        this.instructions,
        this.userId,
        this.image,
        this.mealType});

  SinglePostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    ingredients = json['ingredients'].cast<String>();
    instructions = json['instructions'].cast<String>();
    userId = json['userId'];
    image = json['image'];
    mealType = json['mealType'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['ingredients'] = this.ingredients;
    data['instructions'] = this.instructions;
    data['userId'] = this.userId;
    data['image'] = this.image;
    data['mealType'] = this.mealType;
    return data;
  }
}
