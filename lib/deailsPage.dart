import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String? img;
  final String? titletext;
  final String? price;
  final BuildContext? context;

  DetailsPage({this.img, this.titletext, this.price, this.context});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "asset/images/candle$img.png",
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40),
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ILLUM",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "$titletext",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "$price",
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("SIZE"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "16 OZ",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("QTY"),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              ListTile(
                                leading: Text(
                                  "Details",
                                  style: TextStyle(fontSize: 18),
                                ),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              ListTile(
                                leading: Text(
                                  "Shipping & Returns",
                                  style: TextStyle(fontSize: 18),
                                ),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ),
                              Divider(
                                thickness: 2,
                              )
                            ],
                          ),
                        ),
                      )),
                    ],
                  )),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.favorite_border),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Add to Bascket",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 1),
                            ),
                            style: TextButton.styleFrom(
                                textStyle: TextStyle(color: Colors.white),
                                backgroundColor: Colors.pink[100],
                                shape: StadiumBorder(),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 7,
                                    vertical: 10))),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}
