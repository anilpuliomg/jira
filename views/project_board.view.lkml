view: project_board {
  sql_table_name: `jira.project_board`
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

  dimension: project_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.project_id ;;
  }

  measure: count {
    type: count
    drill_fields: [project.name, project.id, board.name, board.id]
  }
}
