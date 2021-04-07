part of ui;

class SingleItemPickerButton extends StatelessWidget {
  final List<String> items;
  final String text;
  final Function(int index) onConfirm;

  SingleItemPickerButton({this.text, this.items, this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Picker(
              adapter: PickerDataAdapter<String>(pickerdata: items),
              changeToFirst: true,
              hideHeader: false,
              confirmText: "确认",
              confirmTextStyle: TextStyle(),
              cancelText: "取消",
              cancelTextStyle: TextStyle(color: Colors.redAccent),
              onConfirm: (Picker picker, List value) {
                onConfirm(value[0]);
              }).showModal(context);
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ));
  }
}
