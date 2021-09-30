# Fraud Detection

Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.

This analysis has been done based on the data we have on our database and here you can find the Entity Relationship Diagram (ER Diagram) of the database

![ER_Diagram](https://github.com/chirathlv/Fraud-Detection/blob/main/Images/ER_Diagram.PNG)

By inspecting these transactions, It can be noticed that frequency of several users transactions which are less than $2.00, are unusually high. This can be potentially due to some hacking activities which the cardholder may have not yet identified.

When further dig in, it can be seen that several transactions made between 7:00 a.m and 9:00 a.m are abnomally high. Since it is very first in the morning, highly unlikely those were made by the cardholder but probably by the fraudsters.

In fact it is clear during the rest of the daytime, cardholders have made similar transactions frequently. So, highly unlikely they would instead do those out of their pattern in 7:00 a.m to 9:00 a.m.

Part of the analysis, Here are some of the merchants prone to being hacked using small transactions

:one: Wood-Ramirez

:two: Hood-Phillips

:three: Baker Inc

:four: Jarvis-Turner

:five: Sweeney-Paul

There are two notebook files have been attached with details analysis!

:warning:Before run the both notebook files, please check and update the DB connection link with your DB username

`postgresql://postgres:`<b>`Admin`</b>`@localhost:5432/fraud_detection`

When comparing cardholder IDs 2 and 18, cardholder 18 consumption patten has unusual hikes which can potentially be fradulent transactions comparing to cardholder ID 2

![consumption_pattern_2_18](https://github.com/chirathlv/Fraud-Detection/blob/main/Images/consumption_pattern_2_18.png)

Also, cardholder ID 25 monthly transaction analysis indicates that there is one or two high unusual transaction being made on every month compared to the usual transaction activities on the same month which may not have yet been aware by the user

![Analysis_for_Card_Holder_25](https://github.com/chirathlv/Fraud-Detection/blob/main/Images/Analysis_for_Card_Holder_25.png)
