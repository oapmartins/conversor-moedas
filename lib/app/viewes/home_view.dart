import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
              CurrencyBox(),
              SizedBox(
                height: 10,
              ),
              CurrencyBox(),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.amber,
                onPressed: () {},
                child: Container(
                  alignment: AlignmentDirectional.center,
                  width: 200,
                  height: 50,
                  child: Text('CONVERTER', style: TextStyle(fontSize: 15)),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
