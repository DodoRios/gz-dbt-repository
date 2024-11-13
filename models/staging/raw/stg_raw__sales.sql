with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        concat(pdt_id,'_', orders_id) as products_id,
        date_date,
        orders_id,
        pdt_id,
        revenue,
        CAST(quantity as int64) as quantity

    from source

)

select * from renamed
