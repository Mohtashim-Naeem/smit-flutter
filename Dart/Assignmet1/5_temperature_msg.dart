/*
      *** ***            *********              
   **        **          **                
  **          **         **                 
 **            **        *********          
 **            **               **          
  **          **                **    
   **        **    ***   **     **       
     *** *** ** ****  *    ******      
*/

/*
Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
You have num variable temperature = 42;
Now print the message according to temperature:
temp < 0 then Freezing weather
temp 0-10 then Very Cold weather
temp 10-20 then Cold weather
temp 20-30 then Normal in Temp
temp 30-40 then Its Hot
temp >=40 then Its Very Hot
*/

void main() {
  num temp_in_centigrade = 42;
  if (temp_in_centigrade < 0) {
    print(
        "$temp_in_centigrade °C Bundle up! It's cold in negative centigrade temperatures. Stay warm and take care!");
  } else if (temp_in_centigrade >= 0 && temp_in_centigrade < 10) {
    print(
        "$temp_in_centigrade °C Bundle up! It's chilly outside. Stay warm and cozy.");
  } else if (temp_in_centigrade >= 10 && temp_in_centigrade < 20) {
    print(
        "$temp_in_centigrade °C Pleasant weather ahead. Enjoy the mild temperatures and have a great day!");
  } else if (temp_in_centigrade >= 20 && temp_in_centigrade < 30) {
    print(
        "$temp_in_centigrade °C It's getting warmer! Time to embrace the comfortable temperatures and soak up the sun.");
  } else if (temp_in_centigrade >= 30 && temp_in_centigrade < 40) {
    print(
        "$temp_in_centigrade °C Hot days are here. Stay hydrated and find shade to beat the heat. Take care!");
  } else {
    print(
        "$temp_in_centigrade °C Scorching temperatures! Stay indoors and keep cool. Take precautions against extreme heat.");
  }
}
