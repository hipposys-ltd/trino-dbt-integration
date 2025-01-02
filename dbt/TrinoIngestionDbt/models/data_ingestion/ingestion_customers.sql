select  customer_id,
        first_name,
        last_name,
        email,
        phone_number,
        join_date, 
        1/4 as "b"
from {{ source('mariadb', 'customers') }}