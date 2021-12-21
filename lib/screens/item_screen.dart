import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_interior_furniture/model/item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'about.dart';
import 'ar.dart';

class Items extends StatelessWidget {
  List<Itemmodel> items = [
    Itemmodel('Double Bed', 'items/bed.png', 'Double Bed with Two Lamp '),
    Itemmodel('Double Box Bed', 'items/bed_double.png',
        'Double Box Bed with Two Lamp '),
    Itemmodel('Single Sofa', 'items/single_sofa.png',
        'One person can seat at a time'),
    Itemmodel('ProcessWood Sofa', 'items/sofa_uk.png',
        'One person can seat at a time'),
    Itemmodel('Double ProcessWood Sofa', 'items/sofa_grey.png',
        'Two person can seat at a time'),
    Itemmodel('Double Fashionable Sofa', 'items/sofa_pellow.png',
        'Two person can seat at a time'),
    Itemmodel('Double Golden Leaf Sofa', 'items/sofa_yellow.png',
        'Two person can seat at a time'),
    Itemmodel('Single ProcessWood Sofa', 'items/sofa_white.png',
        'Two person can seat at a time'),
    Itemmodel('Simple PC Table', 'items/pc_table.png',
        'Simple Pc table for your Computer and Laptop'),
    Itemmodel('PC Three Monitor Table', 'items/pc_table2.png',
        'Three Monitor table for your Computer'),
    Itemmodel('Rot Chair', 'items/rot_chair.png', 'Rot chair can be Rotatable'),
    Itemmodel('Wood Chair', 'items/chair_wooden.png', 'Chair is made by wood'),
    Itemmodel('Regular Chair', 'items/chair1.png',
        'Chair is made by Plastic and Steel'),
    Itemmodel('Regular Chair', 'items/chair2.png',
        'Chair is made by Plastic and Steel'),
    Itemmodel(
        'Tea Table', 'items/table.png', 'Tea Table  is made by Wood and Steel'),
    Itemmodel('Wood Circle Dinner Table', 'items/dinner_table.png',
        'Circle wood table with four wood chair'),
    Itemmodel('Black Wood Dinner Table', 'items/dinner_table2.png',
        'Black wood table with six black wood chair'),
    Itemmodel('Regular Wood Dinner Table', 'items/dinner_table3.png',
        'Rot chair can be Rotatable'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2E3152),
      appBar: AppBar(
        title: Text("Home Interior Furniture"),
        elevation: 3,
        centerTitle: true,
        backgroundColor: Color(0xff2E3152),
        actions: [
          IconButton(
              icon: Icon(Icons.read_more),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              }),
        ],
      ),
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg:
                                "Scan Full Room Than find white DOT Sign For Setup Picture",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.TOP,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 20.0);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AR_Vision(
                              item_images: items[index].pic,
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              '${items[index].pic}',
                              width: 80,
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                items[index].name,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                              Text(
                                items[index].details,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              )
                            ],
                          ))
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                  itemCount: items.length),
            ),
          ),
        ),
      ),
    );
  }
}
