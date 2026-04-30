import 'package:app/common/color_extension.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();
  List catArr = [
    {"image":"assets/img/cat_offer.png","name":"Offers"},
    {"image":"assets/img/cat_sri.png","name":"Sri Lankan"},
    {"image":"assets/img/cat_3.png","name":"Italian"},
    {"image":"assets/img/dess_4.png","name":"Indian"},
  ];
  List popArr = [
    {"image":"assets/img/res_1.png",
    "name":"Minute by tuk tuk",
    "rate":"4.9",
    "rating":"124",
    "type":"Cafe",
    "loction":"Western Food",
    },
    {"image":"assets/img/res_2.png",
    "name":"Cafe de Noir",
    "rate":"4.9",
    "rating":"124",
    "type":"Cafa",
    "loction":"Western Food",
    },
    {"image":"assets/img/res_3.png",
    "name":"Bakes by Tella",
    "rate":"4.9",
    "rating":"124",
    "type":"Cafe",
    "loction":"Western Food",},
  ];
  List popArr = [
    {"image":"assets/img/res_1.png",
    "name":"Minute by tuk tuk",
    "rate":"4.9",
    "rating":"124",
    "type":"Cafe",
    "loction":"Western Food",
    },
    {"image":"assets/img/res_2.png",
    "name":"Cafe de Noir",
    "rate":"4.9",
    "rating":"124",
    "type":"Cafa",
    "loction":"Western Food",
    },
    {"image":"assets/img/res_3.png",
    "name":"Bakes by Tella",
    "rate":"4.9",
    "rating":"124",
    "type":"Cafe",
    "loction":"Western Food",},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good morning Khadija",
                      style: TextStyle(
                        color: TColor.primayText,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Image.asset(
                          "assets/img/dropdown.png",
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: "Search Food",
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      "assets/img/search.png",
                      width: 20,
                      height: 20,
                    ),
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
