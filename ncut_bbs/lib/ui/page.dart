part of ui;

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget bottomNavigationBar;
  final Widget floatingActionButton;

  BasePage(
      {this.title,
      this.body,
      this.bottomNavigationBar,
      this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
