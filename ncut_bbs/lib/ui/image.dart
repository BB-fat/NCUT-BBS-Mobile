part of ui;

class ImageGallery extends StatelessWidget {
  static double height = 130;

  final List<String> imagePaths;
  final Function(int) removeAt;

  ImageGallery({this.imagePaths, this.removeAt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                child: Stack(
                  children: [
                    ImagePreviewer(
                      tag: imagePaths[index],
                      image: Image.file(
                        File(imagePaths[index]),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                        right: 5,
                        top: 5,
                        child: GestureDetector(
                          onTap: () {
                            removeAt(index);
                          },
                          child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey),
                              child: Center(
                                child: Icon(
                                  Icons.close,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              )),
                        )),
                  ],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 30,
              ),
          itemCount: imagePaths.length),
    );
  }
}

class ImagePreviewer extends StatelessWidget {
  final Image image;
  final String tag;

  ImagePreviewer({this.tag, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: Get.size.height,
              width: Get.size.width,
              child: Center(
                child: Hero(
                  tag: tag,
                  child: image,
                ),
              ),
            ),
          ),
          transition: Transition.noTransition,
        );
      },
      child: Hero(
        tag: tag,
        child: image,
      ),
    );
  }
}
