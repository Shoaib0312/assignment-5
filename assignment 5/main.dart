import 'dart:io';
import 'dart:math';
void main(){

  //QUESTION # 01

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }

  print(expenses);

  //QUESTION #02

  double radius = Radius();
  double area = Area(radius);
  print('Area of the circle is $area');
}

double Radius() {
  stdout.write(' Radius of the circle: ');
  double radius = double.parse(stdin.readLineSync()!);
  return radius;
}

double Area(double radius) {
  double area = pi * pow(radius, 2);
  return area;


  //QUESTION # 03

 double a = getSideLength('a');
  double b = getSideLength('b');
  double c = calculateHypotenuse(a, b);
  print('The length of the hypotenuse is $c');
}

double getSideLength(String name) {
  stdout.write('Enter the length of side $name: ');
  double sideLength = double.parse(stdin.readLineSync()!);
  return sideLength;
}

double calculateHypotenuse(double a, double b) {
  double c = sqrt(pow(a, 2) + pow(b, 2));
  return c;

  //QUESTION # 04

  String text = getText();
  String reversedText = reverseText(text);
  print('The reversed text is: $reversedText');
}

String getText() {
  stdout.write('Enter a text: ');
  String text = stdin.readLineSync()!;
  return text;
}

String reverseText(String text) {
  String reversedText = '';
  for (int i = text.length - 1; i >= 0; i--) {
    reversedText += text[i];
  }
  return reversedText;

  //QUESTION # 06

  stdout.write('Enter the base number: ');
  int base = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the exponent: ');
  int exponent = int.parse(stdin.readLineSync()!);

  int result = power(base, exponent);
  print('$base ^ $exponent = $result');
}

int power(int base, int exponent) {
  if (exponent < 0) {
    return 1 / positivePower(base, -exponent);
  } else {
    return positivePower(base, exponent);
  }
}

int positivePower(int base, int exponent) {
  if (exponent == 0) {
    return 1;
  } else if (exponent == 1) {
    return base;
  } else {
    return base * positivePower(base, exponent - 1);
  }
}

// QUESTION #07

int[] VowelsandConsonants(String str) {
  int vowels = 0;
  int consonants = 0;

  for (int i = 0; i < str.length; i++) {
    String char = str[i].toLowerCase();
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
      vowels++;
    } else if (char >= 'a' && char <= 'z') {
      consonants++;
    }
  }

  return [vowels, consonants];


}
