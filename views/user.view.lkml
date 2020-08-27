view: user {
  sql_table_name: `jira.user`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.time_zone ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
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
      username,
      issue_creator_history.count,
      issue_assignee_history.count,
      issue_product_owner.count,
      issue_product_owner_history.count,
      issue_request_participants.count,
      issue_reporter_history.count,
      issue_tech_lead.count,
      issue_tech_lead_history.count,
      user_group.count
    ]
  }
}
