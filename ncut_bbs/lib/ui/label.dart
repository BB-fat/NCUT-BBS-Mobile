part of ui;

class IconLabel extends StatelessWidget {
  final Widget icon;
  final String text;

  IconLabel({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }
}

class ViewsLabel extends StatelessWidget {
  final int views;

  const ViewsLabel({Key key, this.views}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconLabel(
      icon: Icon(
        Icons.remove_red_eye,
        color: Colors.grey,
        size: 15,
      ),
      text: views.toString(),
    );
  }
}

class LikesLabel extends StatelessWidget {
  final int likes;

  const LikesLabel({Key key, this.likes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconLabel(
      icon: Icon(
        Icons.mood,
        color: Colors.grey,
        size: 15,
      ),
      text: likes.toString(),
    );
  }
}
