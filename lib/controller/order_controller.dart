import 'package:get/get.dart';
import 'package:restaurant_app/model/order_model.dart';

class OrderController extends GetxController {
  final orders = <Order>[
    Order(
        table: 'Table Balcony',
        dish: ['Pizza', 'Veg Momo'],
        quantity: [2, 1],
        price: [200, 120]),
    Order(
        table: 'Table Garden',
        dish: ['Burger', 'Salad'],
        quantity: [5, 3],
        price: [750, 240]),
    Order(
        table: 'Table 01',
        dish: ['Salad', 'Chicken Momo', 'Pizza'],
        quantity: [2, 2, 1],
        price: [160, 300, 100]),
    Order(
        table: 'Table 02', dish: ['Chicken Momo'], quantity: [2], price: [300]),
    Order(
        table: 'Table 03',
        dish: ['Fried Egg', 'Burger'],
        quantity: [3, 2],
        price: [90, 300]),
    Order(
        table: 'Table 04',
        dish: ['Pizza', 'Fried Egg'],
        quantity: [2, 2],
        price: [200, 60]),
    Order(table: 'Table 05', dish: ['Burger'], quantity: [1], price: [150]),
    Order(
        table: 'Table 06', dish: ['Veg Chowmein'], quantity: [2], price: [220]),
    Order(table: 'Table 07', dish: ['Pizza'], quantity: [3], price: [300]),
  ].obs;
}
