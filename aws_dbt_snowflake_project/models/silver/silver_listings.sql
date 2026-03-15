{{ config(materialized='table',unique_key='listing_id') }}

select listing_id,
       host_id,
       property_type,
       room_type,
       city,
       country,
       accommodates,
       bedrooms,
       bathrooms,
       price_per_night,
       {{tag('cast(price_per_night as int)')}} as price_per_night_tag,
       created_at
from {{ ref('bronze_listings') }}  

{% if is_incremental() %}
    where created_at > (select coalesce(max(created_at), '1900-01-01') from {{this}})
{% endif %}