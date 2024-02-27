import 'package:flutter/material.dart';
import 'package:indi_moda/mongo_query/mongo_query.dart';
import 'package:indi_moda/product_card.dart';
import 'package:indi_moda/product_details_page.dart';
// import 'package:indi_moda/products_data.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    // Defining the border
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(20, 112, 113, 1),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 201, 228, 223),
        appBar: AppBar(
          // leading:
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Indi Moda-logos.jpeg',
                width: 40,
                scale: 0.5,
                height: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Indi Moda'),
            ],
          ),
          centerTitle: true,
        ),

        // Body
        body: Column(
          children: [
            //Spacing of height 10
            const SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: border,
                  enabledBorder: border,
                ),
                maxLines: 1,
              ),
            ),

            // const Placeholder(),
            // Product Cards
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = Map<String, Object>.from(products[index]);
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ProductDetailPage(product: product);
                      }));
                    },
                    child: ProductCard(
                      title: product['title'] as String,
                      price: product['price'] as double,
                      company: product['company'] as String,
                      image: product['imageUrl'] as String,
                      backgroundColor: index.isEven
                          ? const Color.fromARGB(255, 134, 165, 159)
                          : const Color.fromARGB(255, 139, 154, 154),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
