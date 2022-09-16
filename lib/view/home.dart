import 'package:flutter/material.dart';
import 'package:gtpl_operator/const/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: primaryColor,
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 14),
        ),
      ),
      child: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() {
          this.index = index;
        }),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.help_outline),
            label: "Help",
          ),
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            label: "Subscriber",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: "My Account",
          ),
        ],
      ),
    ));
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;
  final Color? backgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final List<ItemValue> items;
  const CustomBottomNavigationBar(
      {Key? key,
      required this.currentIndex,
      this.onTap,
      this.backgroundColor,
      this.selectedItemColor,
      this.unselectedItemColor,
      required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 3,
            ),
          ],
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.map((v) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  onTap?.call(v.index);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    IconTheme(
                      data: IconThemeData(
                        color: currentIndex == v.index
                            ? selectedItemColor ?? primaryColor
                            : unselectedItemColor ?? const Color(0xffA9A9A9),
                      ),
                      child: v.icon,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    v.label == null
                        ? Container()
                        : Text(
                            v.label!,
                            style: TextStyle(
                              fontSize: 12,
                              color: v.index == currentIndex
                                  ? selectedItemColor
                                  : unselectedItemColor!,
                            ),
                          ),
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}

class ItemValue {
  final int index;
  final Widget icon;
  final String? label;
  const ItemValue({required this.index, required this.icon, this.label});
}
