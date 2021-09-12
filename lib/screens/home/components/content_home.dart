import 'package:flutter/material.dart';
import 'package:ui_store_flutter/model/product_home/product_home_model.dart';
import 'package:ui_store_flutter/screens/detail/detail_screen.dart';

import '../../../constant.dart';

class ContentHome extends StatefulWidget {
  const ContentHome({Key? key}) : super(key: key);

  @override
  _ContentHomeState createState() => _ContentHomeState();
}

class _ContentHomeState extends State<ContentHome> {
  int selected = 0;
  List<Widget> content = [];
  _getContent(List<ProductHomeModel> model) {
    content = [];
    for (var i = 0; i < model.length; i++) {
      if (categories[selected] == "All") {
        content.add(baseContent(model[i]));
      } else if (model[i].category == categories[selected].toLowerCase()) {
        content.add(baseContent(model[i]));
      }
    }
  }

  Widget baseContent(ProductHomeModel model) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(
        top: 20,
        left: 10,
        bottom: 20,
        right: 10,
      ),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Color(model.backgroundColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    model.imageUrl,
                    width: 150.0,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.name,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "by ${model.production}",
                          style: TextStyle(
                            color: kSubWhiteCOlor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      model.description,
                      style: TextStyle(
                        color: kSubWhiteCOlor,
                        fontSize: 14,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${model.price}",
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print(model.id.toString());
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  model: model,
                                ),
                              ),
                            ).then((_) => setState(() {}));
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 20),
                            decoration: BoxDecoration(
                                color: kTextColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "Buy",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: GestureDetector(
              onTap: () {
                print("ketap ${model.name}");
                model.isFavorite = !model.isFavorite;
                print(model.isFavorite);
                setState(() {});
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.favorite,
                  size: 18,
                  color: (model.isFavorite) ? Color(0xffed7430) : Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          margin: EdgeInsets.only(bottom: 40),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  selected = index;
                  _getContent(modelProduct);
                  setState(() {});
                },
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (index == selected)
                        ? Color(0xFFFF8303)
                        : Colors.grey[100],
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color: (index == selected)
                            ? Colors.white
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        FutureBuilder(
          future: _getContent(modelProduct),
          builder: (BuildContext centext, snapshot) {
            if (content.length > 0) {
              return Column(
                children: content,
              );
            } else {
              return Center(
                child: Text("Data Kosong"),
              );
            }
          },
        ),
      ],
    );
  }
}
