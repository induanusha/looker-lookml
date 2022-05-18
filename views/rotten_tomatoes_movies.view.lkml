view: rotten_tomatoes_movies {
  sql_table_name: `coconut-crab.movies.rotten_tomatoes_movies`
    ;;

  dimension: actors {
    type: string
    sql: ${TABLE}.actors ;;
  }

  dimension: audience_count {
    type: number
    sql: ${TABLE}.audience_count ;;
  }

  dimension: audience_rating {
    type: number
    sql: ${TABLE}.audience_rating ;;
  }

  dimension: audience_status {
    type: string
    sql: ${TABLE}.audience_status ;;
  }

  dimension: authors {
    type: string
    sql: ${TABLE}.authors ;;
  }

  dimension: content_rating {
    type: string
    sql: ${TABLE}.content_rating ;;
  }

  dimension: critics_consensus {
    type: string
    sql: ${TABLE}.critics_consensus ;;
  }

  dimension: directors {
    type: string
    sql: ${TABLE}.directors ;;
  }

  dimension: genres {
    type: string
    sql: ${TABLE}.genres ;;
  }

  dimension: movie_info {
    type: string
    sql: ${TABLE}.movie_info ;;
  }

  dimension: movie_title {
    type: string
    sql: ${TABLE}.movie_title ;;
  }

  dimension_group: original_release {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.original_release_date ;;
  }

  dimension: production_company {
    type: string
    sql: ${TABLE}.production_company ;;
  }

  dimension: rotten_tomatoes_link {
    type: string
    sql: ${TABLE}.rotten_tomatoes_link ;;
  }

  dimension: runtime {
    type: number
    sql: ${TABLE}.runtime ;;
  }

  dimension_group: streaming_release {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.streaming_release_date ;;
  }

  dimension: tomatometer_count {
    type: number
    sql: ${TABLE}.tomatometer_count ;;
  }

  dimension: tomatometer_fresh_critics_count {
    type: number
    sql: ${TABLE}.tomatometer_fresh_critics_count ;;
  }

  dimension: tomatometer_rating {
    type: number
    sql: ${TABLE}.tomatometer_rating ;;
  }

  dimension: tomatometer_rotten_critics_count {
    type: number
    sql: ${TABLE}.tomatometer_rotten_critics_count ;;
  }

  dimension: tomatometer_status {
    type: string
    sql: ${TABLE}.tomatometer_status ;;
  }

  dimension: tomatometer_top_critics_count {
    type: number
    sql: ${TABLE}.tomatometer_top_critics_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
