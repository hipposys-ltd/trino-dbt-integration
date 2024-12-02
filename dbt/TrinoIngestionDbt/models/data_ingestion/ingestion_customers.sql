select *
from {{ source('mariadb', 'customers') }}