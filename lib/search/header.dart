import 'package:champ_app/utils/constants/asset_directory.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(headerBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Container (
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xff30000000),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Champ.", textAlign: TextAlign.left, style: Theme.of(context).textTheme.title.copyWith(color: Colors.white)),
              Text("Zoek, vind en boek je sport", style: Theme.of(context).textTheme.headline.copyWith(color: Colors.white)),
            ],
          ),
        )
    );
  }
}
