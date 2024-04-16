{{ config(materialized='table')
}}

with dim_customer as 
(select C_CUSTKEY as cust_key, C_NAME, C_ADDRESS, C_NATIONKEY, C_PHONE, C_ACCTBAL, C_MKTSEGMENT, C_COMMENT
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.CUSTOMER
)
select * from dim_customer