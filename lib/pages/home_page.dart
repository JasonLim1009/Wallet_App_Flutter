import 'package:flutter/material.dart';
import 'package:untitled/util/my_button.dart';
import 'package:untitled/util/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.currency_bitcoin,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pinkAccent,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      'My',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Wallet',
                      style: TextStyle(
                          fontSize: 28),
                    ),
                  ],),

                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.grey[400],
                    shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5124.21,
                    cardNumber: 1234,
                    expiryMonth: 12,
                    expiryYear: 25,
                    color: Colors.blueAccent[400],
                  ),
                  MyCard(
                    balance: 314.13,
                    cardNumber: 1234,
                    expiryMonth: 11,
                    expiryYear: 24,
                    color: Colors.redAccent[400],
                  ),
                  MyCard(
                    balance: 264.51,
                    cardNumber: 1234,
                    expiryMonth: 07,
                    expiryYear: 24,
                    color: Colors.green[400],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    iconImagePath: 'lib/icons/002.png',
                    buttonText: 'Send',
                  ),

                  MyButton(
                    iconImagePath: 'lib/icons/003.png',
                    buttonText: 'Pay',
                  ),

                  MyButton(
                    iconImagePath: 'lib/icons/001.png',
                    buttonText: 'Bill',
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MyListTile(
                    iconImagePath: 'lib/icons/004.png',
                    tileSubTitle: 'Statistics',
                    tileTitle: 'Payment and Income',
                  ),
                  MyListTile(
                    iconImagePath: 'lib/icons/005.png',
                    tileSubTitle: 'Transactions',
                    tileTitle: 'Transaction History',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
