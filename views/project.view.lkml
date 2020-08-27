view: project {
  sql_table_name: `jira.project`
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

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: project_category_id {
    type: number
    sql: ${TABLE}.project_category_id ;;
  }

  dimension: project_type_key {
    type: string
    sql: ${TABLE}.project_type_key ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, issue_project_history.count, project_board.count, version.count]
  }
}
