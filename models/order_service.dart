import '../models/order.dart';

class OrderService {
  static List<Order> _orders = [];

  static void addOrder(Order order) {
    _orders.add(order);
  }

  static List<Order> getOrders() {
    return _orders;
  }

  static void clearOrders() {
    _orders.clear();
  }
}
