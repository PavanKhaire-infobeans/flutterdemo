import 'dart:developer';

// import 'package:carousel_pro/carousel_pro.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/api/apiService.dart';
import 'package:flutter_demo/model/foodCategories.dart';
import 'package:flutter_demo/utils/routes.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Future<List<Category>?> foodCategoriesList = Future(() => []);

  List<String> foodImages = [
    'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1574484284002-952d92456975?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1585032226651-759b368d7246?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hpbmVzZSUyMGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1623689045624-997891833bf7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGNoaW5lc2UlMjBmb29kfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ];

  List<String> foodTitle = [
    'Burger',
    'Italian Dishes',
    'Chinese',
    'Pasta',
  ];

  // String getFoodImage(int index) {
  //   if (foodImages.asMap().containsKey(index)) {
  //     return foodImages[index];
  //   } else {
  //     return "https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  //   }
  // }

  // String getTitle(int index) {
  //   if (foodTitle.asMap().containsKey(index)) {
  //     return foodTitle[index];
  //   } else {
  //     return "Default title";
  //   }
  // }

  var itemWebCategories = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        width: 200,
        height: 220,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/1.png',
                      height: 160,
                      width: 160,
                    ),
                  ],
                ),
              ),
            ),
            const Text('food',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(
        width: 200,
        height: 220,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/2.png',
                      height: 160,
                      width: 160,
                    ),
                  ],
                ),
              ),
            ),
            const Text('Instamart',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(
        width: 200,
        height: 220,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/3.png',
                      height: 160,
                      width: 160,
                    ),
                  ],
                ),
              ),
            ),
            const Text('Dineout',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(
        width: 200,
        height: 220,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/4.png',
                      height: 160,
                      width: 160,
                    ),
                  ],
                ),
              ),
            ),
            const Text('genie',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    ],
  );

  var itemMobileCategories = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 80,
        height: 100,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/1.png',
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
            ),
            const Text('food',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(
        width: 80,
        height: 100,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/2.png',
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
            ),
            const Text('Instamart',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(
        width: 80,
        height: 100,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/3.png',
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
            ),
            const Text('Dineout',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      SizedBox(
        width: 80,
        height: 100,
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/4.png',
                      height: 60,
                      width: 60,
                    ),
                  ],
                ),
              ),
            ),
            const Text('genie',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    _getFoodList();
  }

  void _getFoodList() async {
    foodCategoriesList = ApiService().getFoodCategories();
    log("Home Page ${foodCategoriesList.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const breakpoint = 600.0;
    if (screenWidth >= breakpoint) {
      return Row(
        children: [
          SizedBox(
            width: 240,
            // TODO: make this configurable
            child: MyDrawer(),
          ),
          // vertical black line as separator
          Container(width: 0.5, color: Colors.black),
          // use Expanded to take up the remaining horizontal space
          Expanded(
            // TODO: make this configurable
            child: _getWebUI(),
          ),
        ],
      );
    } else {
      return _getMobileUI();

      // Scaffold(
      //   key: scaffoldKey,
      //   appBar: AppBar(
      //     title: const Text(
      //       'FOOD APP',
      //     ),
      //     leading: IconButton(
      //       onPressed: () {
      //         scaffoldKey.currentState?.openDrawer();
      //       },
      //       icon: Image.asset(
      //         color: const Color(0xFFac1291),
      //         width: 26,
      //         'assets/images/hamburger.png',
      //         fit: BoxFit.scaleDown,
      //       ),
      //     ),
      //     actions: const <Widget>[
      //       Padding(
      //           padding: EdgeInsets.only(right: 20.0, top: 13),
      //           child: badges.Badge(
      //               badgeContent:
      //               Text('1', style: TextStyle(color: Colors.white)),
      //               badgeAnimation: badges.BadgeAnimation.scale(
      //                 animationDuration: Duration(seconds: 2),
      //                 colorChangeAnimationDuration: Duration(seconds: 1),
      //                 loopAnimation: false,
      //                 curve: Curves.easeInExpo,
      //                 colorChangeAnimationCurve: Curves.easeInCubic,
      //               ),
      //               child: Icon(Icons.shopping_bag_outlined, size: 26),
      //               badgeStyle: badges.BadgeStyle(
      //                 padding: EdgeInsets.all(5),
      //                 badgeColor: Color(0xFFac1291),
      //                 /*badgeGradient: badges.BadgeGradient.linear(
      //             colors: [Colors.blue, Colors.yellow],
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //           ),*/
      //                 elevation: 5,
      //               ))),
      //     ],
      //   ),
      //   body: _getMainScreenUI(),
      //   drawer: MyDrawer(),
      // );
    }
  }

  Widget _getMainScreenUI() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    // width: 300,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              icon: Icon(Icons.search_sharp),
                              iconColor: Color(0xFFac1291),
                              border: InputBorder.none,
                              hintText: "Search",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Card(
                    color: Color(0xFFac1291),
                    elevation: 7,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.0, vertical: 12.0),
                      child: Icon(
                        color: Colors.white,
                        Icons.filter_list_outlined,
                        size: 26,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Carousel(
                    images: const [
                      NetworkImage(
                          'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      NetworkImage(
                          'https://img.freepik.com/free-psd/food-menu-restaurant-web-banner-template_106176-828.jpg?w=996&t=st=1683636077~exp=1683636677~hmac=fc9b5364ae21eeec53b426552601032d796f9b6e02c48167482eef649ec2a9d4'),
                      NetworkImage(
                          'https://images.unsplash.com/photo-1562059390-a761a084768e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=819&q=80'),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: const Color(0xFFac1291),
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.transparent,
                    // borderRadius: true,
                    radius: const Radius.circular(13),
                  )),
              // Container(
              //     width: double.infinity,
              //     height: 180,
              //     margin: const EdgeInsets.all(10),
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(20),
              //       child: const Image(
              //         fit: BoxFit.fill,
              //         image: NetworkImage(
              //             'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
              //       ),
              //     )),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FutureBuilder(
                    future: foodCategoriesList,
                    builder:
                        (context, AsyncSnapshot<List<Category>?> snapshot) {
                      if (snapshot.hasData) {
                        return GridView.builder(
                            shrinkWrap: true,
                            primary: false,
                            // padding: const EdgeInsets.all(10),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 4.0,
                                    mainAxisExtent: 230.0),
                            itemCount: snapshot.data?.length,
                            itemBuilder: ((context, index) {
                              return SizedBox(
                                height: 500,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.detailRoute,
                                        arguments: {
                                          'id': snapshot.data![index].idCategory
                                        });
                                  },
                                  child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    shadowColor:
                                        const Color.fromARGB(255, 177, 80, 159),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 6),
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.topRight,
                                            child: const Icon(
                                              Icons.favorite_border,
                                            ),
                                          ),
                                          Flexible(
                                              child: SizedBox(
                                            width: 100,
                                            height: 100,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 50.0,
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    // getFoodImage(index),
                                                    snapshot.data![index]
                                                        .strCategoryThumb),
                                                radius: 100.0,
                                              ),
                                            ),
                                          )),
                                          SizedBox(
                                            width: double.infinity,
                                            child: Text(
                                              // getTitle(index),
                                              snapshot.data![index].strCategory,
                                              style: const TextStyle(
                                                fontFamily: 'oswald',
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          SizedBox(
                                            width: double.infinity,
                                            child: RatingBar(
                                              initialRating: 3,
                                              itemSize: 14.0,
                                              ratingWidget: RatingWidget(
                                                  full: const Icon(Icons.star,
                                                      color: Colors.orange),
                                                  half: const Icon(
                                                    Icons.star_half,
                                                    color: Colors.orange,
                                                  ),
                                                  empty: const Icon(
                                                    Icons.star_outline,
                                                    color: Colors.orange,
                                                  )),
                                              onRatingUpdate: (value) {},
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const SizedBox(
                                                // width: double.infinity,
                                                child: Text(
                                                  '\$49',
                                                  style: TextStyle(
                                                    fontFamily: 'oswald',
                                                    fontSize: 19,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: InkWell(
                                                    child: Container(
                                                      width: 30.0,
                                                      height: 30.0,
                                                      decoration:
                                                          const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xFFac1291),
                                                      ),
                                                      child: const Icon(
                                                        size: 20,
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }));
                      } else if (snapshot.hasError) {
                        return Text("Error occured ${snapshot.error}");
                      }

                      return const Center(
                          child: SpinKitHourGlass(color: Color(0xFFac1291))
                          // CircularProgressIndicator()
                          );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getMobileUI() {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'FOOD APP',
        ),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Image.asset(
            color: const Color(0xFFac1291),
            width: 26,
            'assets/images/hamburger.png',
            fit: BoxFit.scaleDown,
          ),
        ),
        actions:  <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 13),
              child: InkWell(
               onTap: () {
                 log("cart clicked");
                 Navigator.pushNamed(context, MyRoutes.cartRoute);
               },
                child: const badges.Badge(
                    badgeContent:
                        Text('1', style: TextStyle(color: Colors.white)),
                    badgeAnimation: badges.BadgeAnimation.scale(
                      animationDuration: Duration(seconds: 2),
                      colorChangeAnimationDuration: Duration(seconds: 1),
                      loopAnimation: false,
                      curve: Curves.easeInExpo,
                      colorChangeAnimationCurve: Curves.easeInCubic,
                    ),
                    badgeStyle: badges.BadgeStyle(
                      padding: EdgeInsets.all(5),
                      badgeColor: Color(0xFFac1291),
                      /*badgeGradient: badges.BadgeGradient.linear(
                      colors: [Colors.blue, Colors.yellow],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),*/
                      elevation: 5,
                    ),
                    child: Icon(Icons.shopping_bag_outlined, size: 26)),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      // width: 300,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.search_sharp),
                                iconColor: Color(0xFFac1291),
                                border: InputBorder.none,
                                hintText: "Search",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Card(
                      color: Color(0xFFac1291),
                      elevation: 7,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 12.0),
                        child: Icon(
                          color: Colors.white,
                          Icons.filter_list_outlined,
                          size: 26,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 150.0,
                    width: double.infinity,
                    child: Carousel(
                      images: const [
                        NetworkImage(
                            'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                        NetworkImage(
                            'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                        NetworkImage(
                            'https://images.unsplash.com/photo-1562059390-a761a084768e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=819&q=80'),
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: const Color(0xFFac1291),
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.transparent,
                      // borderRadius: true,
                      radius: const Radius.circular(13),
                    )),
                const SizedBox(
                  height: 10,
                ),
                itemMobileCategories,

                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Food Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    )),

                const SizedBox(
                  height: 5,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: FutureBuilder(
                      future: foodCategoriesList,
                      builder:
                          (context, AsyncSnapshot<List<Category>?> snapshot) {
                        if (snapshot.hasData) {
                          return GridView.builder(
                              shrinkWrap: true,
                              primary: false,
                              // padding: const EdgeInsets.all(10),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 4.0,
                                      mainAxisExtent: 230.0),
                              itemCount: snapshot.data?.length,
                              itemBuilder: ((context, index) {
                                return SizedBox(
                                  height: 500,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, MyRoutes.detailRoute,
                                          arguments: {
                                            'id':
                                                snapshot.data![index].idCategory
                                          });
                                    },
                                    child: Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      shadowColor: const Color.fromARGB(
                                          255, 177, 80, 159),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 6),
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topRight,
                                              child: const Icon(
                                                Icons.favorite_border,
                                              ),
                                            ),
                                            Flexible(
                                                child: SizedBox(
                                              width: 100,
                                              height: 100,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 50.0,
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      // getFoodImage(index),
                                                      snapshot.data![index]
                                                          .strCategoryThumb),
                                                  radius: 100.0,
                                                ),
                                              ),
                                            )),
                                            SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                // getTitle(index),
                                                snapshot
                                                    .data![index].strCategory,
                                                style: const TextStyle(
                                                  fontFamily: 'oswald',
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            SizedBox(
                                              width: double.infinity,
                                              child: RatingBar(
                                                initialRating: 3,
                                                itemSize: 14.0,
                                                ratingWidget: RatingWidget(
                                                    full: const Icon(Icons.star,
                                                        color: Colors.orange),
                                                    half: const Icon(
                                                      Icons.star_half,
                                                      color: Colors.orange,
                                                    ),
                                                    empty: const Icon(
                                                      Icons.star_outline,
                                                      color: Colors.orange,
                                                    )),
                                                onRatingUpdate: (value) {},
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  // width: double.infinity,
                                                  child: Text(
                                                    '\$49',
                                                    style: TextStyle(
                                                      fontFamily: 'oswald',
                                                      fontSize: 19,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: InkWell(
                                                      child: Container(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              Color(0xFFac1291),
                                                        ),
                                                        child: const Icon(
                                                          size: 20,
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }));
                        } else if (snapshot.hasError) {
                          return Text("Error occured ${snapshot.error}");
                        }

                        return const Center(
                            child: SpinKitHourGlass(color: Color(0xFFac1291))
                            // CircularProgressIndicator()
                            );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  Widget _getWebUI() {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'FOOD APP',
        ),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Image.asset(
            color: const Color(0xFFac1291),
            width: 26,
            'assets/images/hamburger.png',
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: const <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0, top: 13),
              child: badges.Badge(
                  badgeContent:
                      Text('1', style: TextStyle(color: Colors.white)),
                  badgeAnimation: badges.BadgeAnimation.scale(
                    animationDuration: Duration(seconds: 2),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: false,
                    curve: Curves.easeInExpo,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                  child: Icon(Icons.shopping_bag_outlined, size: 26),
                  badgeStyle: badges.BadgeStyle(
                    padding: EdgeInsets.all(5),
                    badgeColor: Color(0xFFac1291),
                    /*badgeGradient: badges.BadgeGradient.linear(
                    colors: [Colors.blue, Colors.yellow],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),*/
                    elevation: 5,
                  ))),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      // width: 300,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: SizedBox(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.search_sharp),
                                iconColor: Color(0xFFac1291),
                                border: InputBorder.none,
                                hintText: "Search",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Card(
                      color: Color(0xFFac1291),
                      elevation: 7,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.0, vertical: 12.0),
                        child: Icon(
                          color: Colors.white,
                          Icons.filter_list_outlined,
                          size: 26,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 300.0,
                    width: double.infinity,
                    child: Carousel(
                      images: const [
                        NetworkImage(
                            'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                        NetworkImage(
                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Ffood%2F&psig=AOvVaw1sxqrQCgaM0zGJjOcRQ1ax&ust=1686638289069000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNDFkdyQvf8CFQAAAAAdAAAAABAE'
                            // 'https://img.freepik.com/free-psd/food-menu-restaurant-web-banner-template_106176-828.jpg?w=996&t=st=1683636077~exp=1683636677~hmac=fc9b5364ae21eeec53b426552601032d796f9b6e02c48167482eef649ec2a9d4'
                            ),
                        NetworkImage(
                            'https://images.unsplash.com/photo-1562059390-a761a084768e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=819&q=80'),
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: const Color(0xFFac1291),
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.transparent,
                      // borderRadius: true,
                      radius: const Radius.circular(13),
                    )),
                const SizedBox(
                  height: 10,
                ),
                itemWebCategories,
                /*SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,

                      itemBuilder: (context, index) {
                        return Expanded(child: listItem(context, index));
                      }),
                ),*/

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: FutureBuilder(
                      future: foodCategoriesList,
                      builder:
                          (context, AsyncSnapshot<List<Category>?> snapshot) {
                        if (snapshot.hasData) {
                          return GridView.builder(
                              shrinkWrap: true,
                              primary: false,
                              // padding: const EdgeInsets.all(10),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 4.0,
                                      mainAxisExtent: 230.0),
                              itemCount: snapshot.data?.length,
                              itemBuilder: ((context, index) {
                                return SizedBox(
                                  height: 500,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, MyRoutes.detailRoute,
                                          arguments: {
                                            'id':
                                                snapshot.data![index].idCategory
                                          });
                                    },
                                    child: Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      shadowColor: const Color.fromARGB(
                                          255, 177, 80, 159),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 22.0, vertical: 14),
                                        child: Column(
                                          children: [
                                            Container(
                                              alignment: Alignment.topRight,
                                              child: const Icon(
                                                Icons.favorite_border,
                                              ),
                                            ),
                                            Flexible(
                                                child: SizedBox(
                                              width: 130,
                                              height: 130,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 50.0,
                                                child: CircleAvatar(
                                                  backgroundImage: NetworkImage(
                                                      // getFoodImage(index),
                                                      snapshot.data![index]
                                                          .strCategoryThumb),
                                                  radius: 100.0,
                                                ),
                                              ),
                                            )),
                                            SizedBox(
                                              width: double.infinity,
                                              child: Text(
                                                // getTitle(index),
                                                snapshot
                                                    .data![index].strCategory,
                                                style: const TextStyle(
                                                  fontFamily: 'oswald',
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                            SizedBox(
                                              width: double.infinity,
                                              child: RatingBar(
                                                initialRating: 3,
                                                itemSize: 14.0,
                                                ratingWidget: RatingWidget(
                                                    full: const Icon(Icons.star,
                                                        color: Colors.orange),
                                                    half: const Icon(
                                                      Icons.star_half,
                                                      color: Colors.orange,
                                                    ),
                                                    empty: const Icon(
                                                      Icons.star_outline,
                                                      color: Colors.orange,
                                                    )),
                                                onRatingUpdate: (value) {},
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  // width: double.infinity,
                                                  child: Text(
                                                    '\$49',
                                                    style: TextStyle(
                                                      fontFamily: 'oswald',
                                                      fontSize: 19,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: InkWell(
                                                      child: Container(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              Color(0xFFac1291),
                                                        ),
                                                        child: const Icon(
                                                          size: 20,
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }));
                        } else if (snapshot.hasError) {
                          return Text("Error occured ${snapshot.error}");
                        }

                        return const Center(
                            child: SpinKitHourGlass(color: Color(0xFFac1291))
                            // CircularProgressIndicator()
                            );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      // drawer: MyDrawer(),
    );
  }

  Widget listItem(BuildContext context, int index) {
    return SizedBox(
      width: 100,
      height: 120,
      child: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/${index + 1}.png',
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
          ),
          Text(_getText(index),
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  String _getText(int index) {
    switch (index) {
      case 0:
        return 'food';

      case 1:
        return 'Instamart';

      case 2:
        return 'Dineout';

      case 3:
        return 'Genie';
    }
    return "";
  }
}
