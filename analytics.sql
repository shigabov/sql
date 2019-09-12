SELECT owner,
       table_name,
       RANK () OVER (PARTITION BY owner ORDER BY blocks DESC NULLS LAST) rnk,
       DENSE_RANK () OVER (PARTITION BY owner ORDER BY blocks DESC NULLS LAST) drnk,
       ratio_to_report (blocks) OVER (PARTITION BY owner) pers,
       NTILE (5) OVER (PARTITION BY owner ORDER BY blocks DESC NULLS LAST) part,
       blocks * 8 / 1000 / 1000 AS gb,
       SUM (blocks * 8 / 1000 / 1000) OVER (PARTITION BY owner ORDER BY blocks DESC NULLS LAST) sum_gb
  FROM all_tables
 WHERE owner IN ('BOTABLES_NEW', 'REA', 'TELERIK') AND blocks > 100;

;


