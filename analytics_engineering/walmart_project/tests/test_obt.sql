{{ config(severity='warn')}}

SELECT 1 

FROM {{ ref('obt_b') }} AS obt

WHERE obt.order_id is NULL
OR 
obt.customer_id is NULL
OR
  obt.product_id is NULL
OR obt.employee_id is NULL
OR obt.store_id is NULL 
OR obt.order_item_id is NULL