import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            buildHeader(context),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined),
                    hintText: "Cari Barang",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide:
                            BorderSide(color: Colors.grey, width: 0.5))),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Row buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg"))),
              ),
              Text(
                "Kasir",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag_outlined),
          style: ButtonStyle(
              side: WidgetStatePropertyAll(
                  BorderSide(color: Colors.grey, width: 0.5))),
        )
      ],
    );
  }
}