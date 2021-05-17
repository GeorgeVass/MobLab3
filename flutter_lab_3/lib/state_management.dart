import 'package:flutter/material.dart';
import 'package:flutter_lab_3/cart_model.dart';
import 'package:provider/provider.dart';

class ShoppingAppProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CartModel(),
      child: Consumer<CartModel>(
        builder: (context, val, child) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text(
                  'provider state management',
                  style: TextStyle(color: Colors.teal),
                ),
                backgroundColor: Colors.white,
                leading: val.data == 0
                    ? Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.blueGrey,
                      )
                    : Container(
                        child: Center(
                          child: Text('${val.data}'),
                        ),
                        color: Colors.blueGrey,
                      ),
              ),
              body: Container(
                child: ListView(
                  children: [
                    ShoppingCard(
                      name: 'Hamburger',
                      subscription: 'price: \$1.29',
                    ),
                    ShoppingCard(
                      name: 'Cheeseburger',
                      subscription: 'price: \$1.45',
                    ),
                    ShoppingCard(
                      name: 'Coca Cola',
                      subscription: 'price: \$0.30',
                    ),
                    ShoppingCard(
                      name: 'Potato',
                      subscription: 'price: \$0.70',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ShoppingCard extends StatelessWidget {
  final String name, subscription;

  ShoppingCard({this.name, this.subscription});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, val, _) => ListTile(
        leading: Icon(Icons.fastfood_outlined),
        title: Text(name),
        subtitle: Text(subscription),
        trailing: IconButton(
          icon: Icon(
            Icons.add,
            color: Colors.pink,
          ),
          onPressed: val.addGood,
        ),
      ),
    );
  }
}
