import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:news_admin/services/app_service.dart';

  // final String demoText = "<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>" + 
  // //'''<iframe width="560" height="315" src="https://www.youtube.com/embed/-WRzl9L4z3g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'''+
  // '''<video controls src="https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"></video>''' + 
  // "<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>";

class HtmlBodyWidget extends StatelessWidget {
  const HtmlBodyWidget({Key? key, required this.htmlDescription}) : super(key: key);

  final String htmlDescription;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: '''$htmlDescription''',
      onLinkTap: (String? url, RenderContext context1,Map<String, String> attributes, _) {
        AppService().openLink(context, url!);
      },
      onImageTap: (String? url, RenderContext context1,Map<String, String> attributes, _) {
        AppService().openLink(context, url!);
      },
      style: {
        "body": Style(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            fontSize: FontSize(16.0),
            fontWeight: FontWeight.normal,
            color: Colors.grey[700]),
        "figure": Style(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
      },
    );
  }
}
