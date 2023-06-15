/*
      *** ***                ******                      
   **        **            **     **              
  **          **           **     **               
 **            **          **     **                
 **            **            *******                 
  **          **                   **          
   **        **    ***             **             
     *** *** ** ****  *      ******             
*/

// Q9: Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.
void main() {
  int num = 20;
  if (num % 2 == 0 && num % 5 == 0) {
    print('the number $num is even and it can be divisible by 5.');
  } else if (num % 2 != 0 && num % 7 == 0) {
    print('the number $num is odd and it can be divisible by 7.');
  } else {
    print("It is neither divisible by 5 nor divisible by 7.");
  }
}
