select
    customer_id,
    first_name,
    last_name,
    email,
    phone_number,
    join_date,
    b
from {{ ref('TrinoIngestionDbt', 'ingestion_customers') }}