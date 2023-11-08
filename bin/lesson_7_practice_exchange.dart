import 'dart:io';

void main() {
  // Курсы покупки и продажи для 6 валют (примерные значения)
  // Map<String, double> exchangeRates = {
  //   'USD': 84.50,
  //   'EUR': 94.20,
  //   'GBP': 110.75,
  //   'RUB': 1.10,
  //   'CNY': 12.50,
  //   'JPY': 0.75,
  // };

  // print('Курсы покупки и продажи для 6 валют:');
  // exchangeRates.forEach((currency, rate) {
  //   print('$currency: Покупка - $rate, Продажа - ${rate - 1}');
  // });

  // stdout.write('Выберите операцию (1 - обмен на сомы, 2 - обмен сомов на другую валюту): ');
  // int operation = int.parse(stdin.readLineSync()!);

  // if (operation == 1) {
  //   stdout.write('Выберите валюту, которую вы хотите обменять на сомы: ');
  //   String fromCurrency = stdin.readLineSync()!;

  //   stdout.write('Укажите сумму покупки в $fromCurrency: ');
  //   double amount = double.parse(stdin.readLineSync()!);

  //   double result = amount / exchangeRates[fromCurrency]!;
  //   print('Вы получите $result сом');
  // } else if (operation == 2) {
  //   stdout.write('Выберите валюту, в которую вы хотите обменять сомы: ');
  //   String toCurrency = stdin.readLineSync()!;

  //   stdout.write('Укажите сумму продажи в сомах: ');
  //   double amount = double.parse(stdin.readLineSync()!);

  //   double result = amount * exchangeRates[toCurrency]!;
  //   print('Вам будет начислено $result $toCurrency');
  // } else {
  //   print('Неверная операция');
  // }
  double usd = 88.9;
  double eur = 95.2;
  double rub = 0.96;
  double kzt = 0.19;
  double uzs = 0.012;
  double cny = 12.8;
  print(
      "Курс валют на сегодня: \nUSD =$usd\nEUR = $eur\nRUB =$rub\nKZT = $kzt\nUZS =$uzs\nCNY = $cny \n Выберите опцию \n1) Купить валюту\n2) Продать валюту");
  String choise = stdin.readLineSync()!;
  print("Введите сумму");
  double summ = double.parse(stdin.readLineSync()!);
  print("Введите валюту");
  String valuta = stdin.readLineSync()!;
  if (choise == "1") {
    valuta = valuta.toUpperCase();
    if (valuta == "USD") {
      print(summ * usd);
    } else if (valuta == "EUR") {
      print(summ * eur);
    } else if (valuta == "RUB") {
      print(summ * rub);
    } else if (valuta == "USZ") {
      print(summ * uzs);
    } else if (valuta == "CNY") {
      print(summ * cny);
    } else if (valuta == "KZT") {
      print(summ * kzt);
    } else {
      print("error");
    }
  } else if (choise == "2") {
    valuta == valuta.toUpperCase();
    if (valuta == "USD") {
      print(summ / usd);
    } else if (valuta == "EUR") {
      print(summ / eur);
    } else if (valuta == "RUB") {
      print(summ / rub);
    } else if (valuta == "USZ") {
      print(summ / uzs);
    } else if (valuta == "CNY") {
      print(summ / cny);
    } else if (valuta == "KZT") {
      print(summ / kzt);
    } else {
      print("error");
    }
  } else {
    print("error");
  }
}
