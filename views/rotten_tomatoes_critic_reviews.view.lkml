view: rotten_tomatoes_critic_reviews {
  sql_table_name: `coconut-crab.movies.rotten_tomatoes_critic_reviews`
    ;;

  dimension: critic_name {
    type: string
    sql: ${TABLE}.critic_name ;;
  }

  dimension: publisher_name {
    type: string
    sql: ${TABLE}.publisher_name ;;
  }

  dimension: review_content {
    type: string
    sql: ${TABLE}.review_content ;;
  }

  dimension_group: review {
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
    sql: ${TABLE}.review_date ;;
  }

  dimension: review_score {
    type: string
    sql: ${TABLE}.review_score ;;
  }

  dimension: review_type {
    type: string
    sql: ${TABLE}.review_type ;;
  }

  dimension: rotten_tomatoes_link {
    type: string
    sql: ${TABLE}.rotten_tomatoes_link ;;
  }

  dimension: top_critic {
    type: yesno
    sql: ${TABLE}.top_critic ;;
  }

  measure: count {
    type: count
    drill_fields: [publisher_name, critic_name]
  }
}
