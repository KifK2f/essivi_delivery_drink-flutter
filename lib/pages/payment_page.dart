import 'package:essivi_delivery_drink/components/my_button.dart';
import 'package:essivi_delivery_drink/pages/delivery_progress_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  // bool useGlassMorphism = false;
  // bool useBackgroundImage = false;
  // OutlineInputBorder? border;

  //l'utilisateur veut payer
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      //Juste afficher une boite de dialogue si le formulaire est valide
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Confirmer le Paiement'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('Numéro de carte : $cardNumber'),
                      Text('Date d\'expiration : $expiryDate'),
                      Text('Nom du titulaire : $cardHolderName'),
                      Text('CVV : $cvvCode'),
                    ],
                  ),
                ),
                actions: [
                  //Bouton annuler
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Annuler"),
                  ),

                  // Bouton Oui
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeliveryProgressPage(),
                        ),
                      );
                    },
                    child: Text("Oui"),
                    //Bouton Oui
                  ),
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Caisse"),
      ),
      body: Column(
        children: [
          //credit card
          CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              height: 150,
              width: 300,
              onCreditCardWidgetChange: (p0) {}),

          //Credit card form
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey),
          // const Spacer(),
          const SizedBox(
            height: 25,
          ),

          MyButton(text: "Payer maintenant", onTap: userTappedPay),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
