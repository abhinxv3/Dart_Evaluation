import 'dart:io';

class BankingApp{
  int accno;
  String accholder;
  double balance ;

  BankingApp(this.accno,this.accholder,this.balance);

  void deposit(){
    print("Enter Deposit Amount");
    double? deposit = double.parse(stdin.readLineSync()!);
    balance+=deposit;
    print("Deposit Success $deposit");
  }

  void withdraw(){
    print("Enter Withdrawal Amount");
    double? withdraw = double.parse(stdin.readLineSync()!);
    if(withdraw<=balance) {
      balance -= withdraw;
      print("Withdrawal Success $withdraw");
    }else{
      print("Insufficient Amount!");
    }
  }

  void getAccInfo(){
    print("Account Holder Name:$accholder");
    print("Account Number:$accno");
    print("Account Balance:$balance");
  }

}

void main(){

  print("Enter your Name:");
  String accholder = (stdin.readLineSync()!);
  print("Enter your Account Number:");
  int accno = int.parse(stdin.readLineSync()!);
  print("Enter your Balance:");
  double balance = double.parse(stdin.readLineSync()!);

  BankingApp account = BankingApp(accno, accholder, balance);

  account.getAccInfo();

  account.deposit();
  account.withdraw();
  account.getAccInfo();
}