import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {


  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late var homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 150),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                CurrencyBox(
                    selectedItem: homeController.toCurrency,
                    controller: toText,
                    items: homeController.currencies,
                    onChanged: (model) {
                      setState(() {
                        homeController.toCurrency = model;
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                CurrencyBox(
                    selectedItem: homeController.fromCurrency,
                    controller: fromText,
                    items: homeController.currencies,
                    onChanged: (model) {
                      setState(() {
                        homeController.fromCurrency = model;
                      });
                    }),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.amber,
                    onPressed: () {
                      homeController.convert();
                    },
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      width: 200,
                      height: 50,
                      child: Text('CONVERTER', style: TextStyle(fontSize: 15)),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
