view: imdb_cast_crew {
  sql_table_name: `coconut-crab.movies.imdb_cast_crew`
    ;;

  dimension: characters {
    type: string
    sql: ${TABLE}.characters ;;
  }

  dimension: crew {
    type: string
    sql: ${TABLE}.crew ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: tconst {
    type: string
    sql: ${TABLE}.tconst ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
