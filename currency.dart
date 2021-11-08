import 'dart:io';

class Currency {
  static String USD = "84,78";
  static String EUR = "101,57";
  static String RUB = "1,10";
  static String KZT = "0,19";
  List currency = ["USD", "EUR", "RUB", "KZT"];
  void forPrint() {
    print(
        "Курс валют на сегодняшний день: \n Доллар:$USD\n Евро:$EUR\n Рубль:$RUB\n Тенге:$KZT");
  }
}

main() {
  var currency = new Currency();
  currency.forPrint();
  forChoice();
}

forChoice() {
  print("1)Хотите обменять валюту на сом?");
  print("2)Хотите обменять сом на другую валюту?");
  print("Ввод:");
  var c = stdin.readLineSync();
  print("Выберете валюту: \n USD \n EUR \n RUB \n KZT \n Ввод:");
  var cur = stdin.readLineSync();
  if (cur == "USD") {
    print("Сколько долларов хотите обменять?");
  } else if (cur == "EUR") {
    print("Сколько евро хотите обменять?");
  } else if (cur == "RUB") {
    print("Сколько рублей хотите обменять?");
  } else if (cur == "KZT") {
    print("Сколько тенге хотите обменять?");
  }
  print("Ввод:");
  var sum = stdin.readLineSync();
  var result = 0;
  if (c == "1") {
    if (cur == "USD") {
      var result = (double.parse(sum!) * 84.78);
      print("$sum долларов = $result сомов");
    } else if (cur == "EUR") {
      var result = (double.parse(sum!) * 100);
      print("$sum евро = $result сомов");
    } else if (cur == "RUB") {
      var result = (double.parse(sum!) * 1.02);
      print("$sum рублей = $result сомов");
    } else if (cur == "KZT") {
      var result = (double.parse(sum!) * 0.19);
      print("$sum тенге = $result сомов");
    }
  }
  if (c == "2") {
    if (cur == "USD") {
      var result = (double.parse(sum!) / 84.78);
      print("$sum сомов = $result долларов");
    } else if (cur == "EUR") {
      var result = (double.parse(sum!) / 100);
      print("$sum сомов = $result евро");
    } else if (cur == "RUB") {
      var result = (double.parse(sum!) / 1.02);
      print("$sum сомов = $result рублей");
    } else if (cur == "KZT") {
      var result = (double.parse(sum!) / 0.19);
      print("$sum сомов = $result тенге");
    }
  }
  currenty1();
}

currenty1() {
  print("Продолжить: y / n");
  var b = stdin.readLineSync();
  if (b == "y") {
    return forChoice();
  } else if (b == "n") {
    print("Выход");
  }
}
