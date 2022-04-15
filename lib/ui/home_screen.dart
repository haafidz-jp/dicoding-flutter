import 'package:flutter/material.dart';
import 'package:octokomp/data/dummy_data.dart';
import 'package:octokomp/model/product.dart';

import 'detail_screen.dart';
import 'home/home_grid.dart';
import 'home/home_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: AppBar(
              title: Text("OctoKomp - Official Store"),
              backgroundColor: Colors.blue[600],
            ),
            body: LayoutBuilder(
                builder:(BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return ProductList();
                  } else if (constraints.maxWidth <= 1200) {
                    return ProductGrid(2);
                  } else {
                    return ProductGrid(4);
                  }
                }
            ),
          );
        }
    );
  }
}