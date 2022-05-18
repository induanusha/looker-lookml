view: imdb_epsiodes {
  sql_table_name: `coconut-crab.movies.imdb_epsiodes`
    ;;

  dimension: episode_number {
    type: number
    sql: ${TABLE}.episodeNumber ;;
  }

  dimension: season_number {
    type: number
    sql: ${TABLE}.seasonNumber ;;
  }

  dimension: series_tconst {
    type: string
    sql: ${TABLE}.series_tconst ;;
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
