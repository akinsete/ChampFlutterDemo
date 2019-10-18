import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchFormState();
  }
}

class SearchFormState extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Waar?",
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.black)),
          SizedBox(height: 15),
          TextField(
              style: Theme.of(context)
                  .textTheme
                  .overline
                  .copyWith(color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.location_on, color: Colors.red),
                  hintText: "Locatie",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)))),
          SizedBox(height: 15),
          Text("Wat voor sport?",
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subhead
                  .copyWith(color: Colors.black)),
          SizedBox(height: 15),
          TextField(
              style: Theme.of(context)
                  .textTheme
                  .overline
                  .copyWith(color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Sportcategorie",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)))),
          SizedBox(height: 15),
          new SizedBox(
            width: double.infinity,
            // height: double.infinity,
            child: RaisedButton(
              padding: EdgeInsets.all(15),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  side: BorderSide(color: Theme.of(context).primaryColor)),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text("Zoek op Champ",
                  style: TextStyle(fontSize: 18)),
            ),
          )
        ],
      ),
    );
  }
}
