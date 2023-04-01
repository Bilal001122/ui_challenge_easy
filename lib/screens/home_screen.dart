import 'package:flutter/material.dart';
import 'package:ui_challenge_easy/screens/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(
                      0xFF3C6FE3,
                    ),
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Color(
                        0xFF3C6FE3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Color(
                          0xFF3C6FE3,
                        ),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(
                        color: Color(
                          0xFF3C6FE3,
                        ),
                        width: 1,
                      ),
                    ),
                    hintText: 'Search',
                    prefixIcon: Icon(
                      color: Color(
                        0xFF3C6FE3,
                      ),
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'The Latest',
                      style: TextStyle(
                        color: Color(
                          0xFF3C6FE3,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width * 0.7,
                      color: const Color(
                        0xFF3C6FE3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PostItem();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
