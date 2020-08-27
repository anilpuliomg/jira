view: issue_type {
  sql_table_name: `jira.issue_type`
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: subtask {
    type: yesno
    sql: ${TABLE}.subtask ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, issue_issuetype_history.count, issue_issue_type_history.count]
  }
}
