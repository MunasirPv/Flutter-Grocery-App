import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.logout),
            color: Colors.black,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Container(
            height: maxHeight * 0.4,
            decoration: const BoxDecoration(
              color: Color(0xFFF2F3F2),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20)
              )
            ),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/apple-detailed.png',
              scale: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Natural Red Apple',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.favorite_border),
                      color: const Color(0xFF7C7C7C),
                    ),
                  ],
                ),
                const Text(
                  '1Kg',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF7C7C7C),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.remove),
                      color: const Color(0xFFB3B3B3),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFE2E2E2)
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.add),
                      color: Theme.of(context).primaryColor,
                    ),
                    const Spacer(),
                    const Text(
                      '₹120',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(),
                const ExpansionTile(
                  title: Text(
                    'Product Detail',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  children: [
                    Text(
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7C7C7C)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
