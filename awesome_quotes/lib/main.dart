import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        // List of objects
        author:
            'Osca Wilde', // parameterised constructor r karone nije value  chaibe constructor r vitore
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Osca Wilde',
        text: "I have nothing to declare except my genius"),
    Quote(
        author: 'Osca Wilde',
        text: 'The turth is rarelyy  pure and never simple'),
  ];

  // Widget quoteTemplate(quote) {   // we don't  need it
  //   //quoteTemplate passing element/quote  to the QuoteCard Class/Constractor
  //   return QuoteCard(
  //       quote: quote); //passing value in named constructor or object or QuoteCard Instance or object
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // quotes.map maping  the list and passing the element/quote to  the quoteTemplatte(quote)
        children:
            quotes // List a maping korar jonno  dot map  use korbo , dot map List r  element pass  kore
                .map((quote) => QuoteCard(
                    //  akhane quote hoche variable aita element pass kore
                    quote: quote,
                    delete: () {
                      // lambda functon
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
        // quotes.map returning an iterable // children property expects a list , dot  tolist which is a method we can use to turn it into a list now we have a list of Text widgets
      ), //passing value in named constructor or object or QuoteCard Instance or object
    );
  }
}
