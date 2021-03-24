part of ui;

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;

  BasePage({this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
