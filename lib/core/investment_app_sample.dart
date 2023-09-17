import 'package:flutter/material.dart';

class InvestmentApp extends StatefulWidget {
  const InvestmentApp({Key? key}) : super(key: key);

  @override
  State<InvestmentApp> createState() => _InvestmentAppState();
}

class _InvestmentAppState extends State<InvestmentApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
         leading: const Icon(Icons.person),
        actions: const [
          Icon(Icons.notifications_none),
        ],
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(left: 20, top: 20,right: 20),
            child: Container(
              color: Colors.indigo,
              width: 400,
              height: 200,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("245,446",style: TextStyle(fontSize: 25),),
                  SizedBox(height: 10,),
                  Text("Total Balance",style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
          ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.price_change),
                label: const Text("Top Up"),style: TextButton.styleFrom(backgroundColor: Colors.grey),
            ),
            const SizedBox(width: 10,),
            ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.currency_exchange_sharp),
                label: const Text("Transfer"),style: TextButton.styleFrom(backgroundColor: Colors.grey),),
          ],
        ),
         const SizedBox(height: 20,),
         Container(
           margin: const EdgeInsets.only(right: 280),
             child: const Text("Transactions",style: TextStyle(
               fontSize: 17
             ),)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label:'',
            icon: Icon(Icons.home),
            ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.change_circle),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.cloud_download_rounded),
          ),
        ],
      ),
    );
  }
}
