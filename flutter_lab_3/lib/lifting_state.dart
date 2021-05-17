import 'package:flutter/material.dart';

class ShoppingApp extends StatefulWidget {
  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  int itemsInCart = 0;

  void addToCart() {
    setState(() {
      itemsInCart++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: itemsInCart == 0
              ? Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.blueGrey,
                )
              : Container(
                  child: Center(
                    child: Text('$itemsInCart'),
                  ),
                  color: Colors.blueGrey,
                ),
        ),
        body: Container(
          child: ListView(
            children: [
              ShoppingCard(
                addToCart: addToCart,
                name: 'Hamburger',
                subscription: 'price: \$1.29',
              ),
              ShoppingCard(
                addToCart: addToCart,
                name: 'Cheeseburger',
                subscription: 'price: \$1.45',
              ),
              ShoppingCard(
                addToCart: addToCart,
                name: 'Coca Cola',
                subscription: 'price: \$0.30',
              ),
              ShoppingCard(
                addToCart: addToCart,
                name: 'Potato',
                subscription: 'price: \$0.70',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoppingCard extends StatelessWidget {
  final Function addToCart;
  final String name, subscription;

  ShoppingCard({this.addToCart, this.name, this.subscription});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.fastfood_outlined),
      title: Text(name),
      subtitle: Text(subscription),
      trailing: IconButton(
        icon: Icon(
          Icons.add,
          color: Colors.pink,
        ),
        onPressed: addToCart,
      ),
    );
  }
}
