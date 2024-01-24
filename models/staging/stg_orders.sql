select orderid, orderdate,shipdate, shipmode,ORDERSELLINGPRICE-ORDERCOSTPRICE as orderprofit, c.customername,
c.segment, c.country
 from {{ ref('raw_order') }}
 left join {{ ref('raw_customer') }} as c
 on o.customerid = c.customerid