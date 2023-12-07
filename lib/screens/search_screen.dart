import 'package:bookticket/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: 35)),
          const Gap(20),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*
                airline tickets
                 */
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Airline Tickets")),
                  ),
                  /*
                hotels
                 */
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF4F6FD),
              ),
            ),
          ),
          Gap(25),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(20),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
        Gap(25),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          decoration: BoxDecoration(
            color: Color(0xD91130CE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
                    "Find tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                ),
          ),
        ),
          Gap(40),
          AppDoubleText(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(15),
          Row(
            children: [
              Container(
                height: 400,
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/image9.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(15),
                    Text(
                      "20% discount on the early booking of this flight, Don't miss out this chance",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width*0.44,
                    height: 144,
                    decoration: BoxDecoration(

                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}