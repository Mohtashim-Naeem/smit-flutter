/*
                                      *** ***                 *     *****                     
                                   **        **              **   **     **             
                                  **          **           ****           **             
                                 **            **            **         **                
                                 **            **            **       **                  
                                  **          **             **     **              
                                   **        **    ***       **    **                  
                                     *** *** ** ****  *     ****   **********        
                                */

/*

Q12: Write a program to convert Celsius  to Fahrenheit.
i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32
*/

void main() {
  double temp_in_F = 68;
  double temp_in_C = (temp_in_F - 32) * 5 / 9;
  print("the given Fahrenheit temperature in Celsius : $temp_in_C °C");
}
