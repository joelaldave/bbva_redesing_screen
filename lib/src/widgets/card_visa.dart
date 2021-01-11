import 'package:flutter/material.dart';

class CardVisa extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String assetCard;
  final String assetCardV;
  const CardVisa({
    Key key,
    this.backgroundColor,
    this.textColor,
    this.assetCard,
    this.assetCardV,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 120,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: this.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            height: 15,
            image: AssetImage(this.assetCard),
            fit: BoxFit.cover,
          ),
          Image(
            height: 43,
            image: AssetImage('assets/chip.png'),
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '*5787',
                style: TextStyle(
                    color: this.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Image(
                height: 16,
                image: AssetImage(this.assetCardV),
                fit: BoxFit.cover,
              ),
            ],
          )
        ],
      ),
    );
  }
}
