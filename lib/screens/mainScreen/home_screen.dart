import 'package:flutter/material.dart';
import 'package:store_watch/route/screen_names.dart';
import 'package:store_watch/screens/product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: double.infinity,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProductListScreen()));
        },
        child: Text("مشاهده همه"),
      ),
    );
  }
}
