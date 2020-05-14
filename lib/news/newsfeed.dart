import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'description.dart';
import 'dart:io';

class NewsFeedPage extends StatelessWidget {
  static String tag = "NewsFeedPage-tag";
  NewsFeedPage(this.text);
  final int text;

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String title;
     if (text == 1) {
      title = "Business";
    } else if (text == 2) {
      title = "Stocks";
    } else if (text == 3) {
      title = "Technology";
    } else if (text == 4) {
      title = "Health";
    } 
   
    return Scaffold(
      backgroundColor: Colors.black,
      body: new SafeArea(
          child: new Column(
        children: [
          new Expanded(
            flex: 1,
            child: new Container(
                width: width,
                color: Colors.black,
                child: new GestureDetector(
                  child: new FutureBuilder<List<News>>(
                    future: fatchNews(
                        http.Client(), text), // a Future<String> or null
                    builder: (context, snapshot) {
                      if (snapshot.hasError) print(snapshot.error);

                      return snapshot.hasData
                          ? NewsList(news: snapshot.data)
                          : Center(child: CircularProgressIndicator());
                    },
                  ),
                )),
          ),
        ],
      )),
    );
  }
}

Future<List<News>> fatchNews(http.Client client, id) async {
  String url;
  if (id == 1) {
    url = Constant.base_url +
        "top-headlines?country=us&category=business&apiKey=6379d43c48584ba0917b7d655523eb8e";
  } else if (id == 2) {
    url = Constant.base_url +
        "everything?q=stocks&sortBy=publishedAt&apiKey=6379d43c48584ba0917b7d655523eb8e";
  } else if (id == 3) {
    url = Constant.base_url +
        "everything?q=technology&from=2020-05-13&to=2020-05-14&sortBy=popularity&apiKey=6379d43c48584ba0917b7d655523eb8e";
  } else if (id == 4) {
    url = Constant.base_url +
        "everything?q=health&from=2020-05-10&to=2020-05-14&sortBy=popularity&apiKey=6379d43c48584ba0917b7d655523eb8e";
  } 
  // url = Constant.base_url +"everything?q=COVID-19&from=2020-05-12&sortBy=popularity&apiKey=6379d43c48584ba0917b7d655523eb8e"; 
  final response = await client.get(url);
  return compute(parsenews, response.body);

}

List<News> parsenews(String responsebody) {
  final parsed = json.decode(responsebody);
  return (parsed["articles"] as List)
      .map<News>((json) => new News.fromJson(json))
      .toList();
}

class News {
  String auther;
  String title;
  String description;
  String url;

  News({this.auther, this.title, this.description, this.url});

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      auther: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
    );
  }
}

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (context, index) {
        return new Card(
          child: new ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
            title: Text(news[index].title, style: TextStyle(color: Colors.white),),
            onTap: () {
              var url = news[index].url;
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new DescriptionPage(url),
                  ));
            },
          ),
          color: Colors.grey[900],
        );
      },
    );
  }
}
