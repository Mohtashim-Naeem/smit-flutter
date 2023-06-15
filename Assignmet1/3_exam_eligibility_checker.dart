/*
      *** ***              ******               
   **        **          **     **       
  **          **                **        
 **            **          ******          
 **            **               **        
  **          **                **  
   **        **    ***   **     **     
     *** *** ** ****  *    ******     
*/

/*
Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
Number of classes held = 16,
Number of classes attended = 10,
and print percentage of class attended.
Is student is allowed to sit in exam or not?
*/
void main() {
  int no_of_classes_held = 16;
  int no_of_classes_attended = 10;
  num cal_in_per = (no_of_classes_attended / no_of_classes_held) * 100;
  if (cal_in_per > 75) {
    print("Heyyy! You are allowed to sit in exam(:");
  } else {
    print("Oopps! You aren't allowed to sit in exam.");
  }
}
