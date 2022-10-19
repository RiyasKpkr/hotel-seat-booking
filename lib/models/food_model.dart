// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

class Food{
    Food({
      required this.foodId,
      required this.foodName,
      required this.foodPrice,
      required this.Description,
    });
    var foodId;
    String foodName;
    int foodPrice;
    String Description;
}