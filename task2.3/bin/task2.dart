import 'dart:io';

void main(){

  stdout.write("Enter the first number: ");
  double? First_Number = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double? Second_Number = double.parse(stdin.readLineSync()!);

  print("First Number: $First_Number");
  print("Second Number: $Second_Number");

  Safe_Division(First_Number, Second_Number);



}

Safe_Division(double FirstNumber, double SecondNumber){
  if(SecondNumber == 0 || SecondNumber==null ){
    throw new Exception("Division by zero is not allowed");
  }
  
  double Result= FirstNumber / SecondNumber;
  print("Result of $FirstNumber / $SecondNumber= $Result");
}