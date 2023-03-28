import 'package:coffeeshop/utils/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          // find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 60,
              ),
            ),
          ),
          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Find your coffee...",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade500,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          // horizontal listview
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
    );
  }
}
