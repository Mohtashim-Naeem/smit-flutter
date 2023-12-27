/*
      *** ***                 *****                      
   **        **             **     **              
  **          **            **     **               
 **            **             *****                  
 **            **           **     **                
  **          **            **     **          
   **        **    ***      **     **             
     *** *** ** ****  *       *****             
*/

// Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
// i.e: Percentage should be rounded upto 2 decimal places only.
void main() {
  String St_name = 'Mohtashim';
  String roll_no = '1001';
  String Class = '1st year';
  String grade;
  int eng = 78;
  int urdu = 88;
  int maths = 93;
  int physics = 67;
  int computer = 78;
  int Islamyiat = 87;
  num total_marks = 600;
  num obtained_marks = eng + urdu + maths + physics + computer + Islamyiat;
  num percentage = (obtained_marks / total_marks) * 100;
  if (percentage >= 80) {
    grade = 'A+';
  } else if (percentage >= 70 && percentage < 80) {
    grade = 'A';
  } else if (percentage >= 60 && percentage < 70) {
    grade = 'B';
  } else if (percentage >= 45 && percentage < 60) {
    grade = 'C';
  } else if (percentage >= 35 && percentage < 45) {
    grade = 'E';
  } else {
    grade = 'F';
  }
  String per_2_dec_place = percentage.toStringAsFixed(2);

  print("""
                    RESUTL CARD           
          _______________________________
          STUDENT NAME : $St_name
          ROLL NO. : $roll_no
          CLASS : $Class
          GRADE : $grade
          PERCENTAGE : $per_2_dec_place%
          MARKS : $obtained_marks out of $total_marks
""");
}
