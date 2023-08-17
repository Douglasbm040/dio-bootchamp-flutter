import 'package:flutter/material.dart';
import 'package:santander/src/modules/themes/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: SizedBox(
          height: 30,
          width: 150,
          child: Image.network(
              "https://companieslogo.com/img/orig/SAN_BIG.D-fd4311d2.png?t=1690536229"),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: 500,
          height: 900,
          child: Stack(
            children: [
              Container(
                height: 120,
                width: 500,
                color: Theme.of(context).colorScheme.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(18.0, 0, 18, 40),
                      child: Text(
                        "Olá, Douglas\nAg XXXX Cc XXXXXX-X",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                left: 10,
                right: 10,
                child: Card(
                  color: Colors.white,
                  child: SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_rounded,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const Text(
                                'Saldo disponivel',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Text(
                            'R\$ $_counter',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Saldo + limite : R\$ $_counter',
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Divider(
                                height: 5,
                                color: Colors.grey,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Ver extrato",
                                    style: TextStyle(fontSize: 18),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 305,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    MiniCardCustom(label: "Pagar", icon: Icons.payment_rounded),
                    MiniCardCustom(
                        label: "Transferir",
                        icon: Icons.account_balance_wallet_rounded),
                    MiniCardCustom(
                        label: "Recarga", icon: Icons.smartphone_rounded),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MiniCardCustom extends StatelessWidget {
  const MiniCardCustom({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 120,
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            Text(label, style: Theme.of(context).textTheme.titleSmall)
          ],
        ),
      ),
    );
  }
}
