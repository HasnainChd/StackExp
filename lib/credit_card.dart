import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final String cardHolder;
  final String cardNumber;
  final String expDate;

  const CreditCard({
    super.key,
    required this.cardHolder,
    required this.cardNumber,
    required this.expDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.teal, Colors.teal],
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Positioned(
                bottom: -30,
                right: 10,
                child: Image.asset(
                  'images/visa.png',
                  color: Colors.white,
                ),
              ),
              const Positioned(
                top: 20,
                left: 30,
                child: Text(
                  'Visa Classic Credit',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Positioned(
                  top: 70,
                  left: 50,
                  child: Icon(
                    Icons.credit_card,
                    size: 50,
                    color: Colors.white,
                  )),
              Positioned(
                top: 130,
                left: 40,
                child: Text(
                  cardNumber,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 30,
                  child: Text(
                    cardHolder,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  )),
              Positioned(
                bottom: 45,
                  left: 110,
                  child: Text(
                expDate,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              )),
              const Positioned(
                  left: 30,
                  bottom: 45,
                  child: Text('Valid upto',style: TextStyle(fontSize: 15,color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
