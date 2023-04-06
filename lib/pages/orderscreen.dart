import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/order_view.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Grill',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
            controller: controller,
            indicatorWeight: 2.0,
            indicatorColor: Colors.red,
            tabs: const [
              Text(
                "Order",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "KOT",
                style: TextStyle(color: Colors.black),
              ),
            ]),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          OrderView(),
          Center(child: Text('KOT'),)
        ],
      ),
    );
  }
}
