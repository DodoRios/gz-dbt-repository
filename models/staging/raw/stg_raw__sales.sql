with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        concat(pdt_id,'_', orders_id) as product_id,
        date_date,
        orders_id,
        pdt_id,
        revenue,
        quantity

    from source

)

select * from renamed
