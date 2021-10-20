


import 'package:flutter/material.dart';
import 'package:news_admin/widgets/html_body.dart';

import 'styles.dart';

showNotificationPreview(context, String title, String description) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(80),
          elevation: 0,
          children: <Widget>[

            Text('Preview', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.deepPurpleAccent),),
            
            SizedBox(height: 20,),
            Text(title,
                
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 5,
            ),
            HtmlBodyWidget(htmlDescription: description),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                        style: buttonStyle(Colors.deepPurpleAccent),
                        child: Text(
                          'Close',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                ],
              ),
            ),
            
            
          ],
        );
      });
}