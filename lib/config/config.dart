class Config {
  final String appName = 'News Hour'; //app name
  final String testerPassword =
      'tester12345'; //testing password - don't use this password in the database (you can change this testing password too)

  //firebase server token for push notication
  final String serverToken =
      'AAAAZWYOwT0:APA91bE8uBTWIcdtOe7eBd2G-MuxBK0e1uikcyKulFOTcd8Q4cuhyuCgkG-f4yyOEpvXeg3k5fHgFnhCR0FwaIme3gfq4BcP2bxxJinamqXFzIw4FVc-TPrGrIULMY1xY6S284wJN-Xb';
  final String icon = 'assets/images/icon.png'; // app icon

  //don't edit or remove this
  final List contentTypes = ['image', 'video'];
}
