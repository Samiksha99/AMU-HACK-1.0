import 'package:flutter/material.dart';
import 'package:Covid_tracker/datasorce.dart';
import 'package:url_launcher/url_launcher.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              launch('https://www.cdc.gov/coronavirus/2019-ncov/faq.html');
            },
            icon: Icon(
              Icons.add_alert,
              color: Colors.white,
            ),
            label: Text('More', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(DataSource.questionAnswers[index]['answer']),
                )
              ],
            );
          }),
    );
  }
}
