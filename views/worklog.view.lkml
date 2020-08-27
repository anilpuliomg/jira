view: worklog {
  sql_table_name: `jira.worklog`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: author_id {
    type: string
    sql: ${TABLE}.author_id ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: issue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.issue_id ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.started ;;
  }

  dimension: time_spent_seconds {
    type: number
    sql: ${TABLE}.time_spent_seconds ;;
  }

  dimension: update_author_id {
    type: string
    sql: ${TABLE}.update_author_id ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: [id, issue.id, issue.epic_name, issue.device_name]
  }
}
