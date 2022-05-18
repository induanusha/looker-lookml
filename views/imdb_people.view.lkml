view: imdb_people {
  sql_table_name: `coconut-crab.movies.imdb_people`
    ;;

  dimension: birth {
    type: number
    sql: ${TABLE}.birth ;;
  }

  dimension: death {
    type: number
    sql: ${TABLE}.death ;;
  }

  dimension: nconst {
    type: string
    sql: ${TABLE}.nconst ;;
  }

  dimension: primary_name {
    type: string
    sql: ${TABLE}.primaryName ;;
  }

  dimension: primary_profession {
    type: string
    sql: ${TABLE}.primaryProfession ;;
  }

  measure: count {
    type: count
    drill_fields: [primary_name]
  }
}
