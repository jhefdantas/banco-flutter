import 'package:banco/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.pix),
                          text: 'Pix')),
                ),
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.cached),
                          text: 'Transferir')),
                ),
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.credit_card),
                          text: 'Cartões')),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.bar_chart_outlined),
                          text: 'Investir')),
                ),
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.safety_check),
                          text: 'Seguros')),
                ),
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.shopping_cart),
                          text: 'Shopping')),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.attach_money_sharp),
                          text: 'Pagar')),
                ),
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.assured_workload),
                          text: 'Empréstimo')),
                ),
                InkWell(
                  onTap: (){},
                  child: BoxCard(
                      BoxContent: _AccountActionsContent(
                          icon: Icon(Icons.local_offer),
                          text: 'Ofertas')),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountActionsContent(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
