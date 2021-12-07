import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote // using final because its not going to change over time //  here it is Quote  class type variable
      quote; // taking the value from named constructor and assign it to the quote
  late Function delete; //  delete function  will be assign here
  // ignore: use_key_in_widget_constructors
  QuoteCard(
      {required this.quote, // parameterised constructor a curly  braces use hoi
      required this.delete}); // value named constructor a assign hobe tarpor seta quote instance variable a pass hobe
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ElevatedButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('delete quotes'),
            ),
          ],
        ),
      ),
    );
  }
}
