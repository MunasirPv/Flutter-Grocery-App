import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/model/item_model.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/item_details.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<ItemModel> exclusiveOfferList = [
    ItemModel(
      'assets/images/banana.png',
      'Organic Bananas',
      '1Kg',
      '₹35'
    ),
    ItemModel(
      'assets/images/apple.png',
      'Red Apple',
      '1Kg',
      '₹120'
    ),
    ItemModel(
      'assets/images/bell-pepper-red.png',
      'Bell Pepper Red',
      '1Kg',
      '₹50'
    ),
  ];
  List<ItemModel> bestSellingList = [
    ItemModel(
      'assets/images/bell-pepper-red.png',
      'Bell Pepper Red',
      '1Kg',
      '₹50'
    ),
    ItemModel(
      'assets/images/ginger.png',
      'Ginger',
      '250g',
      '₹20'
    ),
    ItemModel(
      'assets/images/apple.png',
      'Red Apple',
      '1Kg',
      '₹120'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: topPadding + 10),
            Image.asset(
              'assets/icons/colored_icon.png',
              scale: 3.5,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on, color: Color(0xFF4C4F4D)),
                Text(
                  'Calicut, Palazhi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF4C4F4D),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const FaIcon(FontAwesomeIcons.search),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Store',
                            fillColor: Color(0xFFF2F3F2),
                            filled: true,
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 20),
            const HomeCategory(title: 'Exclusive Offer'),
            const SizedBox(height: 20),
            SizedBox(
              height: maxHeight * 0.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: exclusiveOfferList.length,
                separatorBuilder: (BuildContext context, int index){
                  return const SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int index){
                  ItemModel item = exclusiveOfferList[index];
                  return InkWell(
                    onTap: () => PageNavigator.push(context, route: const ItemDetails()),
                    child: ItemCard(
                      image: item.image,
                      itemName: item.name,
                      unit: item.unit,
                      price: item.price,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const HomeCategory(title: 'Best Selling'),
            const SizedBox(height: 20),
            SizedBox(
              height: maxHeight * 0.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: bestSellingList.length,
                separatorBuilder: (BuildContext context, int index){
                  return const SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int index){
                  ItemModel item = bestSellingList[index];
                  return InkWell(
                    onTap: () => PageNavigator.push(context, route: const ItemDetails()),
                    child: ItemCard(
                      image: item.image,
                      itemName: item.name,
                      unit: item.unit,
                      price: item.price,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String image;
  final String itemName;
  final String unit;
  final String price;
  const ItemCard({Key? key, required this.image, required this.itemName, required this.unit, required this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Container(
      width: (maxWidth / 2) - 50,
      height: maxHeight * 0.3,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE2E2E2),
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            itemName,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            unit,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF7C7C7C)
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.5,
                            color: Colors.grey.shade400
                        )
                      ]
                  ),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(Icons.add, color: Colors.white)
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeCategory extends StatelessWidget {
  final String title;
  const HomeCategory({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'See all',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}


