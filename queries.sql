-- Car model with price less than $1,50,00

Select * from CAR_MODEL where BASE_PRICE<1,50,000.

-- show customer name whi have car model as tesla model S.

select c.fname from customer c inner join car a inner join car_model r where r.model_name = "Model S" and a.fk_customer_id_car=c.customer_id and a.fk_model_id_car = r.model_id;

--show customer details who have car color as black.

 SELECT  C.*  FROM CUSTOMER  C  INNER  JOIN  CAR   A OPTION  O   ON   C.CUSTOMER_ID   =  A.FK_CUSTOMER_ID_CAR A.FK_OPTION_ID_CAR = O.OPTION_ID  WHERE O.COLOUR = “BLACK”;
 
 --show customer details who has a car from company HONDA.
 
 SELECT  C.*  FROM  CUSTOMER  C  INNER  JOIN CAR A INNER JOIN CAR_MODEL  M  INNER  JOIN CAR_COMPANY Y WHERE   Y.COMPANY_NAME  =  “HONDA”  AND  M.FK_COMPANY_ID_MODEL  =  Y.COMPANY_ID AND  A.FK_MODEL_ID_CAR  =  M.MODEL_ID AND C.CUSTOMER_ID  =  A.FK_CUSTOMER_ID_CAR;
 
 --Query which will find name of all time the most selling car model.
 
 select min(base_price) "minimum base price" from car_model;
 
 
 --total cars sold in year 2016.
  SELECT  COUNT (CAR_ID)   “CAR SOLD IN 2016" FROM  CAR WHERE  YEAR(DATE)  =  “2016”;
  
 -- show car details with maximim base price.
 
 SELECT  * FROM  CAR_MODEL WHERE   BASE_PRICE  =  (SELECT  MAX(BASE_PRICE) FROM  CAR_MODEL);
 
 --show manufacturer name whose car has the highest price.
 SELECT  M.MANUFACTURER_NAME  FROM  MANUFACTURER  M  INNER  JOIN  CAR_COMPANY  Y  INNER  JOIN  CAR_COMPANY  Y  INNER  JOIN  CAR_MODEL  C  WHERE  C.BASE_PRICE  =  (SELECT min(base_price) FROM  CAR_MODEL )  AND  C.FK_COMPANY_ID_MODEL   =  Y.COMPANY_ID   AND  Y.FK_MANUFACTURER_ID_COMPANY  =  M.MANUFACTURER_ID;
 
 --show customer details who have bought car from ziemann-audi showroom.
 
 SELECT   C.*  FROM  CUSTOMER  C  INNER  JOIN  CAR  A  INNER  JOIN  PAYMENT  P  INNER  JOIN  SHOWROOM  S  WHERE  S.SHOWROOM_ID  =  P.FK_SHOWROOM_ID_PAYMENT  AND  P.FK_CAR_ID_PAYMENT  =  A.CAR_ID  AND  A.FK_CUSTOMER_ID_CAR  =  C.CUSTOMER_ID AND  SHOWROOM_NAME  ==  “ZIEMANN-AUDI";
 
 --show the subsidiaries of manufacturer company Volkswagon.
 
 SELECT   C.COMPANY_NAME  FROM   CAR_COMPANY  C  INNER  JOIN  MANUFACTURER  WHERE  M,MANUFACTURER _NAME  =  “VOLKSWAGEN” AND M.MANUFACTURER_ID  ==  C.MANUFACTURER_ID;

 
 
 
