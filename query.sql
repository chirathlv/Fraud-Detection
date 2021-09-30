/*
Count the transactions that are less than $2.00 per cardholder.
*/
create view num_tractions_less_2 as
select ch.name as Name, count(t.id) as Num_Transactions
from (select * from transaction where amount < 2.00) as t
left join credit_card as cc on t.card = cc.card
left join card_holder as ch on cc.cardholder_id = ch.id
group by ch.name;

/*
What are the top 100 highest transactions made between 7:00 am and 9:00 am?
*/
create view top_100_trans_between_7_to_9 as
select *
from transaction
where DATE_PART('hour', date) between 07 and 08
order by amount desc
limit 100;

/*
Top 100 highest transactions made on rest of the day (between 9:00 am and 7:00 am)
*/
create view top_100_trans_other_days as
select *
from
(
	select *
	from transaction
	where  DATE_PART('hour', date) between 09 and 23
	UNION ALL
	select *
	from transaction
	where  DATE_PART('hour', date) between 00 and 06
) as data
order by amount desc
limit 100;

/*
What are the top 5 merchants prone to being hacked using small transactions?
*/
create view top_5_merchants as
select m.name, count(t.id) as num_transactions
from merchant as m
left join (select * from transaction where amount < 2.00) as t on m.id = t.id_merchant
group by m.name
order by num_transactions desc
limit 5;

