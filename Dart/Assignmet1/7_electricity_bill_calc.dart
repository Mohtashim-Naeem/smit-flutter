/*
Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

Unit    Charge/unit
upto 199    @1.20
200 and above but less than 400    @1.50
400 and above but less than 600    @1.80
600 and above             @2.00;

Test Data :
id: 1001
name: James
units: 800
Expected Output :
Customer IDNO :1001
Customer Name :James
unit Consumed :800
Amount Charges @Rs. 2.00 per unit : 1600.00
Net Bill Amount : 1600.00
*/

void main() {
  String customer_id = '1001';
  String name = 'james';
  num units = 800;
  num charges_per_units;
  num bill_ammount;

  if (units > 0 && units < 200) {
    charges_per_units = 1.20;
    bill_ammount = units * charges_per_units;
  } else if (units >= 200 && units < 400) {
    charges_per_units = 1.50;

    bill_ammount = units * charges_per_units;
  } else if (units >= 400 && units < 600) {
    charges_per_units = 1.80;

    bill_ammount = units * charges_per_units;
  } else {
    charges_per_units = 2.00;

    bill_ammount = units * charges_per_units;
  }

  print("""
      Customer IDNO :$customer_id
      Customer Name :$name
      unit Consumed :$units
      Amount Charges @Rs. $charges_per_units per unit : $bill_ammount
      Net Bill Amount : Rs. $bill_ammount
""");
}
