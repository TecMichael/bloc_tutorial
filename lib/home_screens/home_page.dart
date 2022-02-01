import 'package:find_cribs_app/components/categories.dart';
import 'package:find_cribs_app/home_screens/favourites_page.dart';
import 'package:find_cribs_app/home_screens/profile_page.dart';
import 'package:find_cribs_app/home_screens/sort_page.dart';
import 'package:find_cribs_app/model/featured_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;

  final List<Widget> screens = [const Favourites(), const Profile(), const Sort()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Favourites();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                            color: currentTab == 0 ? Colors.blue : Colors.grey),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Favourites();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,
                            color: currentTab == 1 ? Colors.blue : Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                            color: currentTab == 3 ? Colors.blue : Colors.grey),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Sort();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.tune,
                            color: currentTab == 4 ? Colors.blue : Colors.grey),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: PageStorage(
        bucket: bucket,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FindCribs',
                        style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 185),
                        child: SvgPicture.asset('assets/search.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset('assets/notifcation.svg'),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        child: Icon(
                          Icons.add,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'pick a favourite',
                        style: GoogleFonts.redHatDisplay(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'Categories',
                        style: GoogleFonts.redHatDisplay(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Categories(
                        text: 'Duplex',
                        img: 'assets/duplex.png',
                      ),
                      SizedBox(width: 20),
                      Categories(
                        text: 'Terrace',
                        img: 'assets/terrace.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: const [
                      Categories(
                        text: 'Aparment',
                        img: 'assets/apart.png',
                      ),
                      SizedBox(width: 12),
                      Categories(
                        text: 'others',
                        img: 'assets/others.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Featured',
                        style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 7, left: 15),
                        width: 63,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          'Sale',
                          style: GoogleFonts.redHatDisplay(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      ...List.generate(
                        feauturelist.length,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 7),
                          width: 372,
                          height: 210,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(feauturelist[index].image),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 9.5,
                                offset: const Offset(3, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 17.65,
                                      width: 46.5,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFEC121),
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          'For Sale',
                                          style: GoogleFonts.redHatDisplay(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 90, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      feauturelist[index].name,
                                      style: GoogleFonts.redHatDisplay(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xffFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      feauturelist[index].price,
                                      style: GoogleFonts.redHatDisplay(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    feauturelist[index].location,
                                    style: GoogleFonts.redHatDisplay(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(width: 20),
                                  SvgPicture.asset(
                                    'assets/Vector.svg',
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    feauturelist[index].sqm,
                                    style: GoogleFonts.redHatDisplay(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(width: 120),
                                  SvgPicture.asset('assets/star.svg'),
                                  Text(
                                    feauturelist[index].ratings,
                                    style: GoogleFonts.redHatDisplay(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
