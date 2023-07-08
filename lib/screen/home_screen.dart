import 'package:devoir_wave/models/transaction.dart';
import 'package:devoir_wave/utils/app_layout.dart';
import 'package:devoir_wave/widgets/home_option_widget.dart';
import 'package:devoir_wave/widgets/masked_price_widget.dart';
import 'package:devoir_wave/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

// clone de la page d'accueil de Wave Sénégal
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _isPriceVisible = false;

  final transactions = [
    Transaction(title: "Recharge", amount: 1000, date: DateTime.now()),
    Transaction(
        title: "Paiement électricité", amount: 5000, date: DateTime.now()),
    Transaction(title: "Paiement eau", amount: 5000, date: DateTime.now()),
    Transaction(title: "Vente internet", amount: 5000, date: DateTime.now()),
    Transaction(title: "Service site", amount: 5000, date: DateTime.now()),
    Transaction(title: "Don", amount: 5000, date: DateTime.now()),
    Transaction(title: "Paiement internet", amount: 5000, date: DateTime.now()),
    Transaction(title: "Recharge", amount: 1000, date: DateTime.now()),
    Transaction(
        title: "Paiement électricité", amount: 5000, date: DateTime.now()),
    Transaction(title: "Paiement eau", amount: 5000, date: DateTime.now()),
    Transaction(title: "Vente internet", amount: 5000, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    final displayWidth = AppLayout.displayWidth(context);
    final displayHeight = AppLayout.displayHeightWithoutAppBar(context);

    return Scaffold(
      backgroundColor: const Color(0xFF4749CD),
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       print("menu");
      //     },
      //     icon: const Icon(
      //       Icons.settings,
      //       color: Colors.white,
      //     ),
      //   ),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       _isPriceVisible
      //           ? const Text(
      //               "125000",
      //               style: TextStyle(
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.white,
      //               ),
      //             )
      //           : const MaskedPriceWidget(),
      //       // const MaskedPriceWidget(),
      //       IconButton(
      //         onPressed: () {
      //           setState(() {
      //             _isPriceVisible = !_isPriceVisible;
      //           });
      //         },
      //         icon: Icon(
      //           _isPriceVisible ? Icons.visibility_off : Icons.visibility,
      //           color: Colors.white,
      //           size: displayWidth * 0.07,
      //         ),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: const Color(0xFF4749CD),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // centerTitle: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {
                print("menu");
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            backgroundColor: const Color(0xFF4749CD),
            // title: ,
            expandedHeight: displayHeight * 0.15,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _isPriceVisible
                      ? const Text(
                          "125000",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      : const MaskedPriceWidget(),
                  SizedBox(
                    width: displayWidth * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isPriceVisible = !_isPriceVisible;
                      });
                    },
                    child: Icon(
                      _isPriceVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              // expandedTitleScale: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  // height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(displayWidth * 0.08),
                      topRight: Radius.circular(displayWidth * 0.08),
                    ),
                  ),
                  width: displayWidth,
                  // constraints: const BoxConstraints(
                  //   maxHeight: double.infinity,
                  // ),
                  margin: EdgeInsets.only(
                    top: displayHeight * 0.21,
                  ),
                  padding: EdgeInsets.only(
                    top: displayHeight * 0.05,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeOptionWidget(
                            icon: const Icon(
                              Bootstrap.person,
                              color: Colors.white,
                            ),
                            title: "Send",
                            backgroundColor: const Color(0xFF4749CD),
                            onTap: () {},
                          ),
                          HomeOptionWidget(
                            icon: Icon(
                              FontAwesome.basket_shopping,
                            ),
                            title: "Payments",
                            backgroundColor: Colors.limeAccent.shade100,
                            onTap: () {},
                          ),
                          HomeOptionWidget(
                            icon: Icon(
                              FontAwesome.phone,
                            ),
                            title: "Airtime",
                            backgroundColor: Colors.lightBlue,
                            onTap: () {},
                          ),
                          HomeOptionWidget(
                            icon: Icon(
                              Bootstrap.bank,
                            ),
                            title: "Bank",
                            backgroundColor: Colors.redAccent.shade100,
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: displayHeight * 0.03,
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        thickness: displayHeight * 0.01,
                      ),
                      SizedBox(
                        height: displayHeight * 0.01,
                      ),
                      ...transactions
                          .map((e) => TransactionWidget(transaction: e))
                          .toList(),
                    ],
                  ),
                ),
                Positioned(
                  top: displayHeight * 0.01,
                  left: displayWidth * 0.15,
                  child: SizedBox(
                    height: displayHeight * 0.25,
                    width: displayWidth * 0.7,
                    child: Image.asset("assets/images/wave_card.png"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*
Padding(
        padding: EdgeInsets.only(
          top: displayHeight * 0.02,
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  // height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(displayWidth * 0.08),
                      topRight: Radius.circular(displayWidth * 0.08),
                    ),
                  ),
                  width: displayWidth,
                  // constraints: const BoxConstraints(
                  //   maxHeight: double.infinity,
                  // ),
                  margin: EdgeInsets.only(
                    top: displayHeight * 0.21,
                  ),
                  padding: EdgeInsets.only(
                    top: displayHeight * 0.05,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeOptionWidget(
                            icon: const Icon(
                              Bootstrap.person,
                              color: Colors.white,
                            ),
                            title: "Send",
                            backgroundColor: const Color(0xFF4749CD),
                            onTap: () {},
                          ),
                          HomeOptionWidget(
                            icon: Icon(
                              FontAwesome.basket_shopping,
                            ),
                            title: "Payments",
                            backgroundColor: Colors.limeAccent.shade100,
                            onTap: () {},
                          ),
                          HomeOptionWidget(
                            icon: Icon(
                              FontAwesome.phone,
                            ),
                            title: "Airtime",
                            backgroundColor: Colors.lightBlue,
                            onTap: () {},
                          ),
                          HomeOptionWidget(
                            icon: Icon(
                              Bootstrap.bank,
                            ),
                            title: "Bank",
                            backgroundColor: Colors.redAccent.shade100,
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: displayHeight * 0.03,
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        thickness: displayHeight * 0.01,
                      ),
                      SizedBox(
                        height: displayHeight * 0.01,
                      ),
                      ...transactions
                          .map((e) => TransactionWidget(transaction: e))
                          .toList(),
                    ],
                  ),
                ),
                Positioned(
                  top: displayHeight * 0.01,
                  left: displayWidth * 0.15,
                  child: SizedBox(
                    height: displayHeight * 0.25,
                    width: displayWidth * 0.7,
                    child: Image.asset("assets/images/wave_card.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
 */
