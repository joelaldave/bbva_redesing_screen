class User {
  final String name;
  final List<Account> account;
  final List<Card> cards;

  User(this.name, this.account, this.cards);
}

class Account {
  final int money;
  final String data;

  Account(this.money, this.data);
}

class Card {
  final String numberCard;
  final String type;

  Card(this.numberCard, this.type);
}
