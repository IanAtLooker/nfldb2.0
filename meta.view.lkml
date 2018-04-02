view: meta {
  sql_table_name: public.meta ;;

  dimension_group: last_roster_download {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_roster_download ;;
  }

  dimension: season_type {
    type: string
    sql: ${TABLE}.season_type ;;
  }

  dimension: season_year {
    type: number
    sql: ${TABLE}.season_year ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  dimension: week {
    type: number
    sql: ${TABLE}.week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
