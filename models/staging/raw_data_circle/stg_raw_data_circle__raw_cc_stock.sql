with 

source as (

    select * from {{ source('raw_data_circle', 'raw_cc_stock') }}

),

renamed as (

    select
        concat(model, "_", color, "_", size) AS product_id,
        model,
        color,
        size,
        forecast_stock,
        stock,
        price

    from source

)

select * from renamed
