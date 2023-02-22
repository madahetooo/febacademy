import 'package:flutter/material.dart';
import '../domain/categories_data.dart';

class ProductsCategoriesScreen extends StatefulWidget {
  const ProductsCategoriesScreen({Key? key}) : super(key: key);

  @override
  State<ProductsCategoriesScreen> createState() =>
      _ProductsCategoriesScreenState();
}

class _ProductsCategoriesScreenState extends State<ProductsCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Find Products'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 16, top: 4, right: 16, bottom: 4),
              margin: const EdgeInsets.only(
                  left: 16, top: 0, right: 16, bottom: 16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.green,
                    size: 24.0,
                    semanticLabel: 'Search',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                          //labelText: 'Search',
                          hintText: 'Enter a product name  ',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 0, right: 16, bottom: 0),
                child: GridView.builder(
                    itemCount: categoriesData.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: categoriesData[index].color.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: categoriesData[index].color.withOpacity(0.9),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              height: 120,
                              width: 120,
                              categoriesData[index].imageLink,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              categoriesData[index].name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
