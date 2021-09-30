# Fraud Detection

Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.

This analysis has been done based on the data we have on our database and here you can find the Entity Relationship Diagram (ER Diagram) of the database

![ER_Diagram](https://github.com/chirathlv/Fraud-Detection/blob/main/Images/ER_Diagram.PNG)

By inspecting these transactions, It can be noticed that frequency of several users transactions which are less than $2.00, are unusually high. This can be potentially due to some hacking activities which the cardholder may have not yet identified.

When further dig in, it can be seen that several transactions made between 7:00 a.m and 9:00 a.m. are abnomally high. Since it is very first in the morning, highly unlikely those were made by the cardholder but probably by the fraudsters.

In fact it is clear during the rest of the daytime, cardholders have made similar transactions frequently. So, highly unlikely they would instead do those out of their pattern in 7:00 a.m to 9:00 a.m.

Part of the analysis, Here are some of the merchants prone to being hacked using small transactions

![potential_merchants](https://github.com/chirathlv/Fraud-Detection/blob/main/Images/potential_merchants.PNG)
