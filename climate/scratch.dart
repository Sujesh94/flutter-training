import 'dart:io';

void main(){
  performTask();
}
void performTask() async {
  task1();
  String task2Data=await task2();
  task3(task2Data);
}
void task1(){
  print('Task 1');
}
Future task2() async{
  Duration duration=Duration(seconds: 3);
 await Future.delayed(duration,(){
    print('Task 2');

  });
  return 'Task2 Data';
}
void task3(String task2Data){
  print('Task 3 $task2Data');
}