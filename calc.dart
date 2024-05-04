import 'dart:io';
import 'dart:math';//for the pow function

//creating the functions for the operations
num add(num num1, num num2){
  return num1 + num2;
}

num subtract(num num1, num num2){
  return num1 - num2;
}

num multiply(num num1, num num2){
  return num1 * num2;
}

num division(num num1, num num2){
  return num1 / num2;
}

num power(num num1, num num2){
  return pow(num1, num2);
}


void main(){
  while(true){
  print("A SIMPLE CALCULATOR");

  print("Enter the first number:");
  
  num? first = num.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  num? second = num.parse(stdin.readLineSync()!);

  
  print("Calculator Menu");
  //menu
  print("1. Addition(+)");
  print("2. Subtraction(-)");
  print("3. Division(/)");
  print("4. Multiplication(X)");
  print("5. Power");
  print("6. Exit");


  print("\nSelect the operation required");

    int? choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1://addition
        print("\n${first} + ${second} = ${add(first, second)}\n");
        break;

      case 2://subtraction
        print("\n${first} - ${second} = ${subtract(first, second)}\n");
        break;

      case 3://division
        if (second != 0){//handle error of division by zero
        print("\n${first} / ${second} = ${division(first, second)}\n");
        }else {
          print("Error: Division by zero is not allowed.\n");
        }
        break;

      case 4://multiplication
        print("\n${first} X ${second} = ${multiply(first, second)}\n");
        break;

      case 5://power
        print("\n${first} ^ ${second} = ${power(first, second)}\n");
        break;

      case 6://exit
        print("Bye!");
        print("**************************************************");
        exit(0);

      default:
        print("Invalid option");
        break;
    }
  }


}