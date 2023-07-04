import 'package:devoir_wave/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatefulWidget {
  final Transaction transaction;

  const TransactionWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.transaction.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          )),
      subtitle: Text(
        widget.transaction.date.toString(),
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: Text(
        widget.transaction.amount.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.blue,
        ),
      ),
      onTap: () {
      },
    );
  }
}
