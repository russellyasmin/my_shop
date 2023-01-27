import 'package:flutter/material.dart';
import 'package:my_shop/deailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottonNavigationBar(Icons.person),
                BottonNavigationBar(Icons.shopping_bag),
                BottonNavigationBar(Icons.home, isSelected: true),
                BottonNavigationBar(Icons.favorite),
                BottonNavigationBar(Icons.settings),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 55,
          elevation: 0,
          backgroundColor: Colors.grey[200],
          leading: Image.asset("asset/images/hamburger.png"),
          actions: [
            Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                margin: EdgeInsets.all(5),
                child: Image.asset("asset/images/search.png")),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Shop ",
                  style: TextStyle(fontSize: 32),
                ),
                Text(
                  "Application",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextButton("Home Decore", isSlected: true),
                AppTextButton("Bath & Body"),
                AppTextButton("Beauty"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 1, blurRadius: 30)
                    ]),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CandleText("Candles", isSelected: true),
                          CandleText("Vases"),
                          CandleText("Bins"),
                          CandleText("Floral"),
                          CandleText('Decor'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ContainerWidget(),
                      SizedBox(
                        height: 10,
                      ),
                      LineBar(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              "Hollyday Special",
                              style: TextStyle(fontSize: 24),
                            ),
                            Spacer(),
                            Text(
                              "View All",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            BottomContainer(),
                            BottomContainer(),
                            BottomContainer(),
                            BottomContainer()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container BottonNavigationBar(IconData icon, {isSelected = false}) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 5, spreadRadius: 0.5)
                ]
              : [],
          color: isSelected ? Colors.pink[100] : Colors.white,
          shape: BoxShape.circle),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }

  Container BottomContainer() {
    return Container(
      height: 150,
      width: 270,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 120,
                width: 100,
                child: Image.asset("asset/images/candleone.png",
                    fit: BoxFit.cover),
              )),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Coconut Milk Bath"),
                Text(
                  "16 c",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  "\$ 23",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column CandleText(String textOne, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          textOne,
          style: TextStyle(color: isSelected ? Colors.black : Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          )
      ],
    );
  }

  TextButton AppTextButton(String text, {bool isSlected = false}) {
    return TextButton(
      onPressed: () {},
      child: Text(text),
      style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 18),
          backgroundColor: isSlected ? Colors.pink[100] : Colors.grey[350],
          shape: const StadiumBorder(),
          foregroundColor: isSlected ? Colors.white : Colors.black),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          ImagesColums("one", "Elemental Tin Candle", "\$ 24", context),
          ImagesColums("imagefive", "Summer Candle", "\$ 14", context),
          ImagesColums("three", "Winter Candle", "\$30", context),
          ImagesColums("four", "Dummy Candle", "\$23", context),
        ],
      ),
    );
  }

  GestureDetector ImagesColums(
      String img, String titletext, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(
            img: img,
            price: price,
            titletext: titletext,
            context: context,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "asset/images/candle$img.png",
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(titletext, style: TextStyle(fontSize: 16)),
            Text(
              price,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class LineBar extends StatelessWidget {
  const LineBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Container(
        height: 5,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(left: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          color: Colors.grey[300],
        ),
        child: Container(
          height: 5,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ));
  }
}
