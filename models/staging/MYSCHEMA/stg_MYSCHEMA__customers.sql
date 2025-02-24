with source as (
    select * from {{ source('MYSCHEMA', 'customers') }}
),

renamed as (

    select
        customer_id,
        first_name,
        last_name,
        email,
        created_at

    from source

)

select * from renamed
