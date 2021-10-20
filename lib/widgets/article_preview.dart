import 'package:line_icons/line_icons.dart';
import 'package:news_admin/services/app_service.dart';
import 'package:news_admin/utils/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:news_admin/widgets/html_body.dart';
import '../utils/styles.dart';

  

Future showArticlePreview(
    context,
    String? title,
    String? description,
    String? thumbnailUrl,
    int? loves,
    String source,
    String? date,
    String? category,
    String? contentType,
    String? youtubeUrl) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.50,
            child: ListView(
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        child: CustomCacheImage(
                            imageUrl: thumbnailUrl, radius: 0.0)),
                    contentType == 'image'
                        ? Container()
                        : InkWell(
                            child: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                LineIcons.playCircle,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () async {
                              AppService().openLink(context, youtubeUrl!);
                            },
                          ),
                    Positioned(
                      top: 10,
                      right: 20,
                      child: CircleAvatar(
                        child: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () => Navigator.pop(context)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              category!,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                              style: buttonStyle(Colors.grey[200]),
                              onPressed: () async {
                                AppService().openLink(context, source);
                              },
                              icon: Icon(
                                Icons.link,
                                color: Colors.grey[900],
                              ),
                              label: Text(
                                'Source Url',
                                style: TextStyle(color: Colors.grey[900]),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        title!,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        height: 3,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.favorite, size: 16, color: Colors.grey),
                          Text(
                            loves.toString(),
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.access_time, size: 16, color: Colors.grey),
                          Text(
                            date!,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      HtmlBodyWidget(htmlDescription: description!)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      });
}
