import 'package:flutter/material.dart';
import 'package:ui_store_flutter/model/product_home/product_home_model.dart';

class CardImage extends StatefulWidget {
  const CardImage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductHomeModel model;

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              widget.model.imageUrl,
              width: 500,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context) ;
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {
                    print("ketap ${widget.model.name}");
                    widget.model.isFavorite = !widget.model.isFavorite;
                    print(widget.model.isFavorite);
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: (widget.model.isFavorite)
                        ? Color(0xffed7430)
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Text("data"),
        ],
      ),
    );
  }
}
