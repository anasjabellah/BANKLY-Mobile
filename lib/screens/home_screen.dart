import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waller/colors.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  int index = 0;
  PageController controller = PageController(initialPage: 0);
  var data = [
    {
      'icon':
          'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': "Netflix",
      'subscription': "Month subscription",
      'amount': r'$123'
    },
    {
      'icon':
          'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': "Netflix",
      'subscription': "Month subscription",
      'amount': r'-$13'
    },
    {
      'icon':
          'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'title': "Netflix",
      'subscription': "Month subscription",
      'amount': r'-$23'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wallet",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Active",
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            backgroundColor: Colors.transparent,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Balance",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    r"$ 1.345",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Card",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "MeCard",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtomWidget(
                            text: "Transfer",
                            iconData: Iconsax.convert,
                            callback: () {},
                          ),
                          ButtomWidget(
                            text: "Payment",
                            iconData: Iconsax.export,
                            callback: () {},
                          ),
                          ButtomWidget(
                            text: "Pay Out",
                            iconData: Iconsax.money_send,
                            callback: () {},
                          ),
                          ButtomWidget(
                            text: "Top Up",
                            iconData: Iconsax.add,
                            callback: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Last  Transactions",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "View All",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: ((context, index) => ListTile(

                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      data[index]['icon'].toString()),
                                ),
                                title: Text(
                                  data[index]['title'].toString(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                subtitle: Text(
                                  data[index]['subscription'].toString(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                trailing: Text(
                                  data[index]['amount'].toString(),
                                  style: GoogleFonts.poppins(color: Colors.red),
                                ),
                              ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingNavbar(
              onTap: (i) {
                index = i;
                controller.jumpToPage(index);
              },
              currentIndex: index,
              borderRadius: 20,
              iconSize: 26,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(12),
              backgroundColor: primayColor,
              items: [
                FloatingNavbarItem(icon: Icons.home),
                FloatingNavbarItem(icon: Icons.add_chart_sharp),
                FloatingNavbarItem(icon: Icons.notification_add),
                FloatingNavbarItem(icon: Icons.settings),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class ButtomWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback callback;
  const ButtomWidget({
    super.key,
    required this.text,
    required this.callback,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: callback,
          child: Icon(iconData),
          style: OutlinedButton.styleFrom(
            shape: const CircleBorder(),
            side: const BorderSide(color: Colors.transparent),
            padding: const EdgeInsets.all(16),
            elevation: 5,
            backgroundColor: Colors.white,
            shadowColor: Colors.grey.withOpacity(0.3),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
