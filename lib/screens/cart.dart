// import 'dart:developer';

import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Color(0x81E1DFDF),
          appBar: AppBar(
            title: const Text(
              'My Cart',
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 26,
              ),
            ),
            actions: const <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 15.0, top: 5),
                  child: Icon(
                    Icons.delete,
                    size: 26,
                    color: Colors.grey,
                  )),
            ],
          ),
          body: Container(
              width: double.infinity,
              // height: double.infinity,
              margin: const EdgeInsets.only(top: 25),
              decoration: const BoxDecoration(
                  color: Color(0x81E1DFDF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return cardItem(context, index);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          bottomNavigationBar: Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0)),
            ),
            child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 5, horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    const Expanded(child: Text("4 Items in cart")),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                          Text(
                            "Sub Total",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$ 300.00",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ])),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                          Text(
                            "Shipping",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$ 10.00",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ])),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(color: Colors.grey, height: 1),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                          Text(
                            "Total",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$ 310.00",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ])),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(

                          style: ButtonStyle(

                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    )),
                          ),
                          onPressed: () {},
                          child: const Text('Finalize order')),
                    )
                    ,const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget cardItem(BuildContext context, int index) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
          child: Row(
            children: [
              const SizedBox(
                width: 60,
                height: 60,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1623689045624-997891833bf7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGNoaW5lc2UlMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    ),
                    radius: 45.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Fresh Meal",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'wosald',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$ 240.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  )
                ],
              )),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.add, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          elevation: 8,
                          fixedSize: const Size(12, 12),
                          shape: const CircleBorder(),
                          // padding: EdgeInsets.all(10),
                        ),
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                          fontFamily: 'oswald',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.remove, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          elevation: 8,
                          fixedSize: const Size(12, 12),
                          shape: const CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
