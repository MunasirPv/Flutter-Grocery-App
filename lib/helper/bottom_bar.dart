import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(15)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: const [
              BottomBarItem(
                icon: 'assets/icons/store.png',
                title: 'Shop',
                isSelected: true,
              ),
              BottomBarItem(
                icon: 'assets/icons/explore.png',
                title: 'Explore',
              ),
              BottomBarItem(
                icon: 'assets/icons/cart.png',
                title: 'Cart',
              ),
              BottomBarItem(
                icon: 'assets/icons/favourite.png',
                title: 'Favourite',
              ),
              BottomBarItem(
                icon: 'assets/icons/account.png',
                title: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBarItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelected;
  const BottomBarItem({Key? key, required this.icon, required this.title, this.isSelected = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(
            AssetImage(icon),
            color: isSelected ? Theme.of(context).primaryColor : null,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Theme.of(context).primaryColor : null,
            ),
          ),
        ],
      ),
    );
  }
}
