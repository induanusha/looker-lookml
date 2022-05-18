view: imdb_titles {
  sql_table_name: `movies.imdb_titles`
    ;;

  dimension: attributes {
    type: string
    sql: ${TABLE}.attributes ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.endYear ;;
  }

  dimension: genres {
    type: string
    sql: ${TABLE}.genres ;;
  }

  dimension: is_adult {
    type: string
    sql: ${TABLE}.isAdult ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: ordering {
    type: string
    sql: ${TABLE}.ordering ;;
  }

  dimension: original_title {
    type: string
    sql: ${TABLE}.originalTitle ;;
  }

  dimension: primary_title {
    type: string
    sql: ${TABLE}.primaryTitle ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: runtime_minutes {
    type: number
    sql: ${TABLE}.runtimeMinutes ;;
  }

  dimension: start_year {
    type: number
    sql: ${TABLE}.startYear ;;
  }

  dimension: tconst {
    type: string
    sql: ${TABLE}.tconst ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: title_type {
    type: string
    sql: ${TABLE}.titleType ;;
  }

  dimension: types {
    type: string
    sql: ${TABLE}.types ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
