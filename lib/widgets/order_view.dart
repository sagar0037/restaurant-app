import 'package:flutter/material.dart';
import 'package:restaurant_app/controller/order_controller.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/pages/orderdetails.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  OrderController controller = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: controller.orders.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderDetails()));
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.orders[index].table,
                      style: const TextStyle(fontSize: 10.0),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Table', style: TextStyle(fontSize: 11),),
                                Text('1:45PM', style: TextStyle(color: Colors.green, fontSize: 10),)

                              ],
                            ),
                            const SizedBox(height: 4.0),
                            ListView.builder(
                                shrinkWrap: true,
                                itemExtent: 12,
                                itemCount: controller.orders[index].dish.length,
                                itemBuilder: (context, itemIndex) {
                                  final price = controller
                                      .orders[index].price[itemIndex]
                                      .toString();
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.circle_sharp,
                                            size: 5,
                                          ),
                                          const SizedBox(
                                            width: 2.0,
                                          ),
                                          Text(
                                            controller
                                                .orders[index].dish[itemIndex],
                                            style: const TextStyle(fontSize: 8),
                                          ),
                                        ],
                                      ),
                                      Text(price,
                                          style: const TextStyle(fontSize: 8)),
                                    ],
                                  );
                                }),
                          ],
                        ),
                      ),
                    )
                  ]),
            );
          }),
    );
  }
}
