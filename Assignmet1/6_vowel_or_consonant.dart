/*
      *** ***              ******               
   **        **           **               
  **          **         **                
 **            **        *********         
 **            **        **     **         
  **          **         **     **   
   **        **    ***   **     **      
     *** *** ** ****  *    ******     
*/

// Q.6: Write a program to check whether an alphabet is a vowel or consonant.

void main() {
  String alphabet = 'p';

  if (alphabet == 'a' ||
      alphabet == 'e' ||
      alphabet == 'i' ||
      alphabet == 'o' ||
      alphabet == 'u') {
    print("The given alphabet '$alphabet' is vowel.");
  } else {
    print("The given alphabet '$alphabet' is consonant.");
  }
}
