= isNull(Fields.CNT_RF,0)

= Format("{0:d}",Date(CInt(Parameters.Par_Year2.Value),CInt(Parameters.Par_Month2.Value),DaysInMonth(CInt(Parameters.Par_year2.Value),CInt(Parameters.Par_Month2.Value))))

RowNumber() расчет номера строки по группам

Parameters.Par_prob.Value.length --количечество значений


--Года
SELECT * FROM LIST_YEAR_VW
WHERE YEAR >= 2017

--Месяц
SELECT * FROM LIST_MONTH_SN
WHERE (:PYear = 2017 AND ID = 12)
    OR (:PYear = EXTRACT(YEAR FROM SYSDATE) AND ID <= EXTRACT(MONTH FROM SYSDATE))
    OR (:PYear < EXTRACT(YEAR FROM SYSDATE) AND :PYear > 2017)
    ;
    
--сеетвые или генерирующие    
SELECT * FROM LIST_TYPE_COMPANY_VW
    
--классы
SELECT NAME EQUIP_NAME, ID, V_SORT
  FROM BOK_INDUSTRY_ITS_NEW2 T1
 WHERE IS_GEN = :is_Gen 
   AND is_group = case when :is_gen=0 then 1 else 0 end 
   AND id != 4    
   ;
   
select *
 from ITS_FILTER_STUCTURE
WHERE IS_GEN = 1
     AND FILTER_PERIOD_ID = :Par_Year * 100 + :Par_Mounth
     AND IS_ITS4 = 1
     
     
SELECT * FROM LIST_MONTH_SN a
WHERE ((:PYear = 2017 AND ID = 12)
    OR (:PYear = EXTRACT(YEAR FROM SYSDATE) AND ID <= EXTRACT(MONTH FROM SYSDATE))
    OR (:PYear < EXTRACT(YEAR FROM SYSDATE) AND :PYear > 2017))
  and (:PYear*100+a.id) >= (:PYear1*100+:id1)     