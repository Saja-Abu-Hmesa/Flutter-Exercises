import 'package:flutter/material.dart';
import 'widgets/profile_card_widget.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Image.asset('assets/logo.png', height: 32),
        actions: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: const Color.fromARGB(20, 30, 54, 114),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Image.asset('assets/bing.png'),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: const Color.fromARGB(20, 30, 54, 114),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Image.asset('assets/cart.png'),
              onPressed: () {},
            ),
          ),

          const SizedBox(width: 20),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // Search field
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                // Filter button
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          // The image section
          Container(
            width: double.infinity,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(0, 156, 185, 221),
                  Color.fromARGB(150, 203, 218, 238),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Todays Deal",
                          style: TextStyle(
                            fontFamily: 'Hind',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "50% OFF",
                          style: TextStyle(
                            fontFamily: 'Hind',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Et provident eos est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.",
                          style: TextStyle(
                            fontFamily: 'Hind',
                            fontSize: 14,
                            color: Colors.black54,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),

                          label: Text(
                            "BUY IT NOW",
                            style: TextStyle(
                              fontFamily: 'Hind',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                              fontSize: 16,
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),

                  SizedBox(width: 20),

                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 195,
                      width: 195,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Color.fromARGB(50, 32, 101, 178),
                            Color.fromARGB(0, 255, 255, 255),
                          ],
                          center: Alignment.center,
                          radius: 0.6,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 30),
                        height: 195,
                        width: 195,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [
                              Color.fromARGB(50, 32, 101, 178),
                              Color.fromARGB(45, 255, 255, 255),
                            ],
                            center: Alignment.center,
                            radius: 0.4,
                          ),
                        ),
                        child: Image.asset(
                          'assets/girl.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          // stories section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(150, 203, 218, 238),
                            Color.fromARGB(0, 156, 185, 221),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Top Rated Freelances',
                          style: TextStyle(
                            fontFamily: 'Hind',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "View All ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Hind',
                        fontSize: 16,

                        color: Color.fromARGB(100, 21, 72, 131),
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CompactProfileCard(
                        imageUrl: "assets/image.png",
                        name: "Wade Warren",
                        profession: "Beautician",
                        rating: 4.2,
                      ),
                    ),
                    Expanded(
                      child: CompactProfileCard(
                        imageUrl: "assets/image.png",
                        name: "Wade Warren",
                        profession: "Beautician",
                        rating: 4.2,
                      ),
                    ),
                    Expanded(
                      child: CompactProfileCard(
                        imageUrl: "assets/image.png",
                        name: "Wade Warren",
                        profession: "Beautician",
                        rating: 4.2,
                      ),
                    ),
                    Expanded(
                      child: CompactProfileCard(
                        imageUrl: "assets/image.png",
                        name: "Wade Warren",
                        profession: "Beautician",
                        rating: 4.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
