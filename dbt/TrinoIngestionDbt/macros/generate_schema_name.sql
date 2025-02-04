{% macro generate_schema_name(custom_schema_name, node) -%}
    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none or custom_schema_name == 'none' -%}
        {{ default_schema }}
    {%- elif default_schema is none or default_schema == 'none' or default_schema == 'dbt' or default_schema == '' -%}
        {{ custom_schema_name | trim }}
    {%- else -%}
        {{ default_schema }}_{{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}
