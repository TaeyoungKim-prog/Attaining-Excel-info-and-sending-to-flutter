class OrderModel {
  var orderNumber, firstName, food, food_date, food_time, second_food, second_food_date, second_food_time, third_food, third_food_date, third_food_time, fourth_food, fourth_food_date, fourth_food_time, fifth_food, fifth_food_date, fifth_food_time;


  OrderModel({this.firstName, this.food, this.food_date, this.food_time, this.orderNumber, this.second_food, this.second_food_date, this.second_food_time, this.third_food, this.third_food_date, this.third_food_time, this.fourth_food, this.fourth_food_date, this.fourth_food_time, this.fifth_food, this.fifth_food_date, this.fifth_food_time});

  factory OrderModel.fromJson(dynamic json){
    return OrderModel(
      orderNumber: "${json['orderNumber']}",
      firstName: "${json['firstName']}",
      food: "${json['food']}",
      food_date: "${json['food_date']}",
      food_time: "${json['food_time']}",
      second_food: "${json['second_food']}",
      second_food_date: "${json['second_food_date']}",
      second_food_time: "${json['second_food_time']}",
      third_food: "${json['third_food']}",
      third_food_date: "${json['third_food_date']}",
      third_food_time: "${json['third_food_time']}",
      fourth_food: "${json['fourth_food']}",
      fourth_food_date: "${json['fourth_food_date']}",
      fourth_food_time: "${json['fourth_food_time']}",
      fifth_food: "${json['fifth_food']}",
      fifth_food_date: "${json['fifth_food_date']}",
      fifth_food_time: "${json['fifth_food_time']}",
    );
  }

  Map toJson() => {
    "orderNumber": orderNumber,
    "firstName": firstName,
    "food": food,
    "food_date": food_date,
    "food_time" : food_time,
    "second_food": second_food,
    "second_food_date": second_food_date,
    "second_food_time": second_food_time,
    "third_food": third_food,
    "third_food_date": third_food_date,
    "third_food_time": third_food_time,
    "fourth_food": fourth_food,
    "fourth_food_date": fourth_food_date,
    "fourth_food_time": fourth_food_time,
    "fifth_food": fifth_food,
    "fifth_food_date": fifth_food_date,
    "fifth_food_time": fifth_food_time,
  };
}