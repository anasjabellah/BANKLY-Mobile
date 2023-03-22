
class Transaction {
  final int id;
  final double amount;
  final DateTime createdAt;
  final String transactionType;
  final String walletId;

  Transaction({
    required this.id,
    required this.amount,
    required this.createdAt,
    required this.transactionType,
    required this.walletId,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      amount: json['amount'].toDouble(),
      createdAt: DateTime.parse(json['createdAt']),
      transactionType: json['transactionType'],
      walletId: json['walletId'],
    );
  }
}
