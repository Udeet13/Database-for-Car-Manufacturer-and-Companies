--It will classify the car models according to base_price,the car model with price more than 150000 is prime,price between 50,000 and 1,50,000 is mid-range, And lower than 50,000 is economy. 

CREATE DEFINER=`root`@`localhost` FUNCTION `classify`(base double) RETURNS varchar(10) CHARSET utf8    DETERMINISTIC BEGIN      DECLARE lvl varchar(10);      IF base > 150000 THEN                    SET lvl = 'PRIME';    ELSEIF (base <= 150000 AND base >= 50000) THEN                    SET lvl = 'MID-RANGE';    ELSEIF base < 50000 THEN                    SET lvl = 'ECONOMY';    END IF;     RETURN (lvl);  
                                              
                                                                                                           
