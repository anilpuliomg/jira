view: issue_board {
  sql_table_name: `jira.issue_board`
    ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
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

  dimension: board_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.board_id ;;
  }

  dimension: issue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.issue_id ;;
  }

  measure: count {
    type: count
    drill_fields: [issue.id, issue.epic_name, issue.device_name, board.name, board.id]
  }
}
