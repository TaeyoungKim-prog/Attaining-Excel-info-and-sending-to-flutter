import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import '../order_model.dart';
import "dart:convert" as convert;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<OrderModel> orders = List<OrderModel>();

  getOrderFromSheet() async {
    var raw = await http.get(
        "https://script.google.com/macros/s/AKfycbxmwbhkBQJVnOsjhrgC4D3t_k4wZOKUjCsuOG4lvgmlOU0vp5vOwAJOkloS66IfkzH6/exec");

    var jsonOrder = convert.jsonDecode(raw.body);
    print("this is json Order $jsonOrder");

    //orders = jsonOrder.map((json) => OrderModel.fromJson(json));
    jsonOrder.forEach((element) {
      OrderModel orderModel = new OrderModel();
      orderModel.firstName = element["firstName"];
      orderModel.orderNumber = element["orderNumber"];
      orderModel.food = element["food"];
      orderModel.food_date = element["food_date"];
      orderModel.food_time = element["food_time"];
      orderModel.second_food = element["second_food"];
      orderModel.second_food_date = element["second_food_date"];
      orderModel.second_food_time = element["second_food_time"];
      orderModel.third_food = element["third_food"];
      orderModel.third_food_date = element["third_food_date"];
      orderModel.third_food_time = element["third_food_time"];
      orderModel.fourth_food = element["fourth_food"];
      orderModel.fourth_food_date = element["fourth_food_date"];
      orderModel.fourth_food_time = element["fourth_food_time"];
      orderModel.fifth_food = element["fifth_food"];
      orderModel.fifth_food_date = element["fifth_food_date"];
      orderModel.fifth_food_time = element["fifth_food_time"];


      orders.add(orderModel);
      print("length of orders: ${orders.length}");
    });

    print("${orders[0]}");
  }

  @override
  void initState() {
    getOrderFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("orders"),
        elevation: 0,
      ),
      body: Container(
          child: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrderTile(
            orderNumber: orders[index].orderNumber.toString(),
            firstName: orders[index].firstName,
            food: orders[index].food,
            food_date: orders[index].food_date,
            food_time: orders[index].food_time,
            second_food: orders[index].second_food,
            second_food_date: orders[index].second_food_date,
            second_food_time: orders[index].second_food_time,
            third_food: orders[index].third_food,
            third_food_date: orders[index].third_food_date,
            third_food_time: orders[index].third_food_time,
            fourth_food: orders[index].fourth_food,
            fourth_food_date: orders[index].fourth_food_date,
            fourth_food_time: orders[index].fourth_food_time,
            fifth_food: orders[index].fifth_food,
            fifth_food_date: orders[index].fifth_food_date,
            fifth_food_time: orders[index].fifth_food_time,
          );
        },
      )),
    );
  }
}

class OrderTile extends StatelessWidget {
  var orderNumber, firstName, food, food_date, food_time, second_food, second_food_date, second_food_time, third_food, third_food_date, third_food_time, fourth_food, fourth_food_date, fourth_food_time, fifth_food, fifth_food_date, fifth_food_time;


  OrderTile(
      {this.orderNumber,
      this.firstName,
      this.food_time,
      this.food_date,
      this.food,
      this.second_food,
      this.second_food_date,
      this.second_food_time,
      this.third_food,
      this.third_food_date,
      this.third_food_time,
      this.fourth_food,
      this.fourth_food_date,
      this.fourth_food_time,
      this.fifth_food,
      this.fifth_food_date,
      this.fifth_food_time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("주문번호:     ${orderNumber}"),
        Text("이름:             ${firstName}"),
        Text("배송시간:     ${food_time}"),
        Text("배송날짜:     ${food_date}"),
        Text("음식:         ${food}"),
        Text("음식2:        ${second_food}"),
        Text("음식3:        ${third_food}"),

      ]),
    );
  }
}
