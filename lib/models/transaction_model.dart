class TransactionModel {
  final int? id;
  final int userId;
  final String bookTitle;
  final String bookGenre;
  final String bookCover;
  final String bookSynopsis;
  final double pricePerDay;
  final String borrowerName;
  final int borrowDuration;
  final String startDate;
  final double totalCost;
  final String status;

  TransactionModel({
    this.id,
    required this.userId,
    required this.bookTitle,
    required this.bookGenre,
    required this.bookCover,
    required this.bookSynopsis,
    required this.pricePerDay,
    required this.borrowerName,
    required this.borrowDuration,
    required this.startDate,
    required this.totalCost,
    this.status = 'active',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'bookTitle': bookTitle,
      'bookGenre': bookGenre,
      'bookCover': bookCover,
      'bookSynopsis': bookSynopsis,
      'pricePerDay': pricePerDay,
      'borrowerName': borrowerName,
      'borrowDuration': borrowDuration,
      'startDate': startDate,
      'totalCost': totalCost,
      'status': status,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'],
      userId: map['userId'],
      bookTitle: map['bookTitle'],
      bookGenre: map['bookGenre'],
      bookCover: map['bookCover'],
      bookSynopsis: map['bookSynopsis'],
      pricePerDay: map['pricePerDay'],
      borrowerName: map['borrowerName'],
      borrowDuration: map['borrowDuration'],
      startDate: map['startDate'],
      totalCost: map['totalCost'],
      status: map['status'],
    );
  }

  TransactionModel copyWith({
    int? id,
    int? userId,
    String? bookTitle,
    String? bookGenre,
    String? bookCover,
    String? bookSynopsis,
    double? pricePerDay,
    String? borrowerName,
    int? borrowDuration,
    String? startDate,
    double? totalCost,
    String? status,
  }) {
    return TransactionModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      bookTitle: bookTitle ?? this.bookTitle,
      bookGenre: bookGenre ?? this.bookGenre,
      bookCover: bookCover ?? this.bookCover,
      bookSynopsis: bookSynopsis ?? this.bookSynopsis,
      pricePerDay: pricePerDay ?? this.pricePerDay,
      borrowerName: borrowerName ?? this.borrowerName,
      borrowDuration: borrowDuration ?? this.borrowDuration,
      startDate: startDate ?? this.startDate,
      totalCost: totalCost ?? this.totalCost,
      status: status ?? this.status,
    );
  }
}
