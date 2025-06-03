import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'expense_model.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  final List<String> categories = ['Food', 'Transport', 'Enter', 'Bills'];
  final List<Expense> _expense = [];
  double total = 0.0;

  void _showForm() {
    String selectedCategory = categories.first;
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime expenseDateTime = DateTime.now();

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Title'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Amount'),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                  items: categories
                      .map((category) => DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  ))
                      .toList(),
                  onChanged: (value) => selectedCategory = value!,
                  decoration: InputDecoration(labelText: 'select any one'),
                ),
                SizedBox(height: 20,),

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){


                      if(titleController.text.isNotEmpty || double.tryParse(amountController.text) !=null){
                        _adExpense(titleController.text,double.parse(amountController.text),expenseDateTime,selectedCategory);

                        Navigator.pop(context);
                      }

                    }, child: Text('Add expense'))),
                SizedBox(height: 20,)
              ],
            ),
          );
        });
  }

  void _adExpense(String title, double amount,DateTime date, String category){
    setState(() {
      _expense.add(Expense(title: title, amount: amount, date: date, category: category));
      total +=amount;
      print(_expense);
    });
  }


  void _DeleteExpense(int index){
    setState(() {

      total =total - _expense[index].amount;
      _expense.removeAt(index);
      print(_expense);
    });
  }


  Future<dynamic> ShowDialog(BuildContext context,int index){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            backgroundColor: Colors.blueGrey,
            title: Text('Confirmation'),
            content: Text('Would you like to delete the expense?'),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text('No')),
              TextButton(onPressed: (){
                Navigator.pop(context);
                _DeleteExpense(index);
              },
                  child: Text('Yes')),
            ],
          );

        }
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: () => _showForm(), icon: Icon(Icons.add))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Card(
                color: Colors.orange,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right:20,
                    bottom: 50,
                    top: 50,
                  ),
                  child: Text('Total Expense: ৳$total',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _expense.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2,color: Colors.green)

                        ),



                        child: Card(
                          child: ListTile(
                            leading: Container(

                              height: 100,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2,color: Colors.purpleAccent)
                              ),
                                child: Center(child: Column(
                                  children: [
                                    SizedBox(height: 8,),

                                    Text(_expense[index].category,style: TextStyle(fontSize: 12.sp, color: Colors.black,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text('৳' + _expense[index].amount.toString(),style: TextStyle(fontSize: 10, color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                )),

                            ),

                            title: Text(_expense[index].title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold ),),
                            subtitle: Text(
                                DateFormat.yMMMd().format(_expense[index].date),style: TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),),
                            trailing: IconButton(
                              onPressed: ()=>
                                  ShowDialog(context, index),

                              //   _deletelist(index),
                              icon: Icon(Icons.delete,color: Colors.red,),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> _showForm(),
        child: Icon(Icons.add),
      ),
    );
  }
}