import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: height * 0.04,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/image/Image20220411131107.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        getIcon('assets/image/playEnd1x.png', width, height),
                        getIcon(
                            'assets/image/play_all_icon.png', width, height),
                        getIcon('assets/image/ayaList.png', width, height),
                        getIcon(
                            'assets/image/settings_icon.png', width, height),
                        getIcon('assets/image/list_icon.png', width, height),
                        getIcon('assets/image/bookmark_list_icon.png', width,
                            height),
                        getIcon('Icons.play_arrow', width, height),
                        getIcon(
                            'assets/image/addBookMark_icon.png', width, height),
                      ],
                    ),
                    Positioned(
                      child: Container(
                        height: height,
                        width: width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/image/Image20220411131052.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: height * 0.085,
                  left: width * 0.15,
                  child: Image(
                    height: height * 0.05,
                    image: const AssetImage('assets/image/Sora020.png'),
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: height * 0.085,
                left: width / 1.55,
                child: Image(
                  height: height * 0.045,
                  image: const AssetImage('assets/image/Joza017.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: height / 6,
                left: width * 0.09,
                child: Container(
                  height: height * 0.89,
                  width: width - 70,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/image/p367@2x.png',
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

getIcon(String imgPath, height, width) => Padding(
      padding: EdgeInsets.only(top: height * 0.008),
      child: Container(
        height: height * 0.07,
        width: width * 0.07,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        )),
      ),
    );
