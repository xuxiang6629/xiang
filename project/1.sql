select SUM(QTY) AS QTY,MIN(PRICEACTUAL) AS PRICEACTUAL,SUM(TOT_AMT_ACTUAL) AS TOTAMTACTUAL,MAX(DIANNAME) as dianname FROM(
SELECT p.NAME AS STYLENUMBER,P.VALUE AS STYLE,T.QTY,T.PRICEACTUAL,T.TOT_AMT_ACTUAL,T.TOT_AMT_ACC,T.CREATIONDATE,u.name AS DIANNAME,u.truename,y.name AS username 
From M_RETAILITEM t 
left join m_product p on p.id = t.m_product_id LEFT JOIN USERS u on u.id=t.ownerid left join HR_EMPLOYEE y on y.id=t.salesrep_id
WHERE T.CREATIONDATE >= to_date('2016-12-08 00:00:00','yyyy-mm-dd hh24:mi:ss') and T.CREATIONDATE < to_date('2017-01-04 00:00:00','yyyy-mm-dd hh24:mi:ss') 

) group by DIANNAME
