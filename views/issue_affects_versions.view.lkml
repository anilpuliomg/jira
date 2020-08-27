view: issue_affects_versions {
  sql_table_name: `jira.issue_affects_versions`
    ;;

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}._fivetran_id ;;
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

  dimension: issue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.issue_id ;;
  }

  dimension: version_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.version_id ;;
  }

  measure: count {
    type: count
    drill_fields: [issue.id, issue.epic_name, issue.device_name, version.name, version.id]
  }
}
