view: field_option {
  sql_table_name: `jira.field_option`
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      issue_epic_status_history.count,
      issue_flagged.count,
      issue_flagged_history.count,
      issue_os_history.count,
      issue_reproducible_history.count,
      issue_type_of_bug_history.count
    ]
  }
}
