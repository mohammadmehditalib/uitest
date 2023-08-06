import 'package:flutter/material.dart';
import 'package:ui_test/widgets/bubble_stories.dart';
import 'package:ui_test/widgets/card_holder.dart';
import 'package:ui_test/widgets/grid_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List people = [
    'kahaani.png',
    'winner.png',
    'bikashbabu.png',
    'gold.png',
    'update.png',
  ];
  final List cardDetails = [
    'Account.png',
    'Raja.png',
    'gold_card.png',
  ];
  final List card = [
    'Group 2510.png',
  ];

  final List tileHolder = [
    'branch.png',
    'gold_card.png',
    'insurance.png',
    'jewelery.png',
    'language.png',
    'passbook.png',
    'paybills.png',
    'rewards.png',
    'send_money.png',
    'spin_win.png',
    'support.png',
    'wallet.png'
  ];

  final List functionsHolder = [
    'Bills.png',
    'Recharge.png',
    'DTH.png',
    'Electricity.png',
    'Internet.png',
    'Postpaid.png',
    'postpaidp.png',
    'View All.png',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset('Assets/options.png'),
          title: SizedBox(height: 24, width: 77.6, child: Image.asset('Assets/branch_logo 3.png')),
          actions: [
            Image.asset('Assets/bell_icon.png'),
            Image.asset('Assets/Power_button.png'),
          ],
        ),
        bottomNavigationBar: bottomBar(),
        floatingActionButton: phone(),
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bubbleStories(),
                cardDetailsList(),
                const SizedBox(
                  height: 44,
                ),
                details(),
                moreCards(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Text(
                    'Pay Your Bills',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                functionalityOfApp(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///widget for showing diffenet types of bubble stories
  Widget bubbleStories() {
    return SizedBox(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (context, index) {
              return BubbleStories(name: people[index]);
            }),
      ),
    );
  }

  /// widget for showing different  types of card
  Widget cardDetailsList() {
    return SizedBox(
      height: 190,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: cardDetails.length,
          itemBuilder: (context, index) {
            return CardHolder(
              image: cardDetails[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 20,
            );
          },
        ),
      ),
    );
  }

  /// widget for showing diffent types of details
  Widget details() {
    return GridWidget(
      check: true,
      dataList: tileHolder,
    );
  }

  /// widget for showing different  types of card
  Widget moreCards() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 190,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: card.length,
            itemBuilder: (context, index) {
              return CardHolder(
                image: card[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 20,
              );
            },
          ),
        ),
      ),
    );
  }

//widgets for  displaying all the functions in form of grids
  Widget functionalityOfApp() {
    return GridWidget(
      check: false,
      dataList: functionsHolder,
    );
  }

  /// widgets for bottom navigation tab bar
  Widget bottomBar() {
    return Container(
      color: Colors.white,
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            icon: Image.asset('Assets/mycards.png'),
          ),
          Tab(
            icon: Image.asset('Assets/XENIE.png'),
          ),
          Tab(
            icon: Image.asset('Assets/myprofile.png'),
          ),
        ],
      ),
    );
  }

  //widgets for showing floating Action in form of phone
  Widget phone() {
    return FloatingActionButton(
      onPressed: () {},
      child: Image.asset('Assets/phone.png'),
    );
  }
}
