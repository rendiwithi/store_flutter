import 'package:flutter/material.dart';
import 'package:ui_store_flutter/model/product_home/product_home_model.dart';

import '../../../constant.dart';

class SizeSelect extends StatefulWidget {
  const SizeSelect({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductHomeModel model;

  @override
  State<SizeSelect> createState() => _SizeSelectState();
}

class _SizeSelectState extends State<SizeSelect> {
  int selectSize = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Size",
            style: TextStyle(
              color: kTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 40),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.model.size.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    selectSize = index;
                    // _getContent(modelProduct);
                    print(selectSize);
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.circle,
                      color: (selectSize == index)
                          ? Color(0xFFFF8303)
                          : Colors.grey[100],
                    ),
                    child: Center(
                      child: Text(
                        widget.model.size[index].toString(),
                        style: TextStyle(
                          color: (selectSize == index)
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
        ],
      ),
    );
  }
}
