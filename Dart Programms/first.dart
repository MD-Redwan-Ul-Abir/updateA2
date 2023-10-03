import 'dart:io';
main(){

  var a='apple';
  String b = 'banana';
  stdout.writeln("What is your name: ");
  String? name = stdin.readLineSync();

  print("This is $name");

  stdout.writeln("What is your friends name: ");
  String? fname = stdin.readLineSync();

  print("$name is friend of $fname");

  print(a+"is as good as"+b);


}