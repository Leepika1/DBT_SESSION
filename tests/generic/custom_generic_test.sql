{% test total_revenue(model, column_name) %}



WITH total_revenue_test as (

    select
        {{column_name}}

    from {{model}}
    
    WHERE  {{column_name}} <= 0

)

select *
from total_revenue_test

{% endtest %}