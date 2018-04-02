- view: team
  sql_table_name: public.team
  fields:

  - dimension: team_id
    primary_key: true
    type: string
    sql: ${TABLE}.team_id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [team_id, name]

