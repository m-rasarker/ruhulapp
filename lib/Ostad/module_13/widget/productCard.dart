import 'package:flutter/material.dart';

import '../models/productModel.dart';
class ProductCard extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final Data product;
  const ProductCard({
    super.key, required this.onEdit, required this.onDelete,required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Container(

              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.green)
              ),
      child: Column(
        children: [
          Container(

            height: 155,
            child: Image.network(
                height: 100,
                fit: BoxFit.cover,
                product.img.toString()),
          ),
          Container(
              color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      product.productName.toString(),
                      style: TextStyle(

                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      textAlign: TextAlign.left,
                      'Price: ${product.unitPrice} | QTY : ${product.qty}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(width: 2, color: Colors.orangeAccent)
            ),

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: onEdit, icon: Icon(Icons.edit,color: Colors.blue,)),
                  SizedBox(width: 5,),
                  IconButton(onPressed: onDelete, icon: Icon(Icons.delete,color: Colors.red,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}