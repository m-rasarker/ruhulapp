import 'package:flutter/material.dart';
import 'package:ruhul_app/Ostad/module_13/ProductController.dart';
import 'package:ruhul_app/Ostad/module_13/widget/productCard.dart';

class Module13 extends StatefulWidget {
  const Module13({super.key});

  @override
  State<Module13> createState() => _Module13State();
}

class _Module13State extends State<Module13> {
  final Productcontroller productcontroller = Productcontroller();
  bool isLoading =false;
  Future<void>fetchData() async {
    try{
      setState(() {
        isLoading=true;
      });
      await productcontroller.fetchProducts();
      if (!mounted){
        return;
      }
      setState(() {
      });
    }
    catch(err){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err.toString())));
    }
    finally{
      setState(() {
        isLoading=false;
      });
    }

  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      fetchData();
    });


  }




  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    void productDialog({String ? id,String ? name,String ? img,int ? qty,int ? unitPrice,int ? totalPrice,required bool isupdate}) {
      TextEditingController productNameController = TextEditingController();
      TextEditingController productQTYController = TextEditingController();
      TextEditingController productImageController = TextEditingController();
      TextEditingController productUnitPriceController =  TextEditingController();
      TextEditingController productTotalPriceController = TextEditingController();

      productNameController.text = name ?? '';
      productImageController.text = img ?? '';
      productQTYController.text = qty != null ? qty.toString() : '';
      productUnitPriceController.text = unitPrice != null ? unitPrice.toString() : '';
      productTotalPriceController.text = totalPrice != null ? totalPrice.toString() : '';



      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(isupdate ? 'Edit product' : 'Add product'),
            content: Form(
                key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: productNameController,

                    decoration: InputDecoration(labelText: 'Product name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Product name ';
                      } else {
                        return null;
                      }
                    },

                  ),
                  TextFormField(
                    controller: productImageController,
                    decoration: InputDecoration(labelText: 'Product image'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Image Url';
                      } else {
                        return null;
                      }
                    },

                  ),
                  TextFormField(
                    controller: productQTYController,
                    decoration: InputDecoration(labelText: 'Product qty'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Quantity';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: productUnitPriceController,
                    decoration:
                    InputDecoration(labelText: 'Product unit price'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Unit Price';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: productTotalPriceController,

                    decoration: InputDecoration(labelText: ' total price'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Total Price';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Close')),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () async {


                          if (_formKey.currentState!.validate()) {

                            productcontroller.CreateUpdateProducts(
                                productNameController.text,
                                productImageController.text,
                                int.parse(productQTYController.text.trim()),
                                int.parse(
                                    productUnitPriceController.text.trim()),
                                int.parse(
                                    productTotalPriceController.text.trim()),
                                id,
                                isupdate
                            ).then((value) async {
                              if (value) {

                                fetchData();
                               // await productcontroller.fetchProducts();
                                setState(() {

                                });

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(isupdate
                                          ? 'product updated '
                                          : 'Product Created'),
                                      duration: Duration(seconds: 2),
                                    ));



                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Something wrong...!'),
                                      duration: Duration(seconds: 2),
                                    ));
                              }
                            });


                            Navigator.pop(context);
                            await fetchData();
                            setState(() {});

                          }





                        },


                        child: Text(isupdate ? 'Update Product': 'Add product'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ));
    }



    return Scaffold(
      appBar: AppBar(
        title: Text('Product CRUD'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
           // mainAxisExtent: 180,
            childAspectRatio: 0.6,
          ),
          itemCount: productcontroller.products.length,
          itemBuilder: (context, index) {
            var product = productcontroller.products[index];
            return ProductCard(
              onEdit: () {
                productDialog(name:product.productName ,img:product.img ,id:product.sId ,unitPrice:product.unitPrice ,totalPrice:product.totalPrice ,qty:product.qty ,isupdate: true);
              },
              onDelete: () {
                productcontroller.DeleteProducts(product.sId.toString())
                    .then((value) async {
                  if (value) {
                    await productcontroller.fetchProducts() ;
                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Product Deleted'),
                      duration: Duration(seconds: 2),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Something wrong...!'),
                      duration: Duration(seconds: 2),
                    ));
                  }
                });
              },
              product: product,
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>

            productDialog(isupdate: false),

        child: Icon(Icons.add,color: Colors.green,),
      ),

    );
  }
}



