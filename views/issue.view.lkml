view: issue {
  sql_table_name: `jira.issue`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

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

  dimension: _original_estimate {
    type: number
    sql: ${TABLE}._original_estimate ;;
  }

  dimension: _remaining_estimate {
    type: number
    sql: ${TABLE}._remaining_estimate ;;
  }

  dimension: _time_spent {
    type: number
    sql: ${TABLE}._time_spent ;;
  }

  dimension: actual_result {
    type: string
    sql: ${TABLE}.actual_result ;;
  }

  dimension: assignee {
    type: string
    sql: ${TABLE}.assignee ;;
  }

  dimension: automation_coverage {
    type: string
    sql: ${TABLE}.automation_coverage ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }

  dimension: current_implementation {
    type: string
    sql: ${TABLE}.current_implementation ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: development {
    type: string
    sql: ${TABLE}.development ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_date ;;
  }

  dimension: environment {
    type: string
    sql: ${TABLE}.environment ;;
  }

  dimension: epic_color {
    type: string
    sql: ${TABLE}.epic_color ;;
  }

  dimension: epic_link {
    type: number
    sql: ${TABLE}.epic_link ;;
  }

  dimension: epic_name {
    type: string
    sql: ${TABLE}.epic_name ;;
  }

  dimension: epic_status {
    type: number
    sql: ${TABLE}.epic_status ;;
  }

  dimension: expected_result {
    type: string
    sql: ${TABLE}.expected_result ;;
  }

  dimension: fix_details {
    type: string
    sql: ${TABLE}.fix_details ;;
  }

  dimension: issue_color {
    type: string
    sql: ${TABLE}.issue_color ;;
  }

  dimension: issue_type {
    type: number
    sql: ${TABLE}.issue_type ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.last_viewed ;;
  }

  dimension: original_estimate {
    type: number
    sql: ${TABLE}.original_estimate ;;
  }

  dimension: os {
    type: number
    sql: ${TABLE}.os ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: parent_link {
    type: number
    sql: ${TABLE}.parent_link ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: productboard_url {
    type: string
    sql: ${TABLE}.productboard_url ;;
  }

  dimension: project {
    type: number
    sql: ${TABLE}.project ;;
  }

  dimension: remaining_estimate {
    type: number
    sql: ${TABLE}.remaining_estimate ;;
  }

  dimension: reporter {
    type: string
    sql: ${TABLE}.reporter ;;
  }

  dimension: reproducible {
    type: number
    sql: ${TABLE}.reproducible ;;
  }

  dimension: resolution {
    type: number
    sql: ${TABLE}.resolution ;;
  }

  dimension_group: resolved {
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
    sql: ${TABLE}.resolved ;;
  }

  dimension: root_cause {
    type: string
    sql: ${TABLE}.root_cause ;;
  }

  dimension: server_staging_automation_production_url {
    type: string
    sql: ${TABLE}.server_staging_automation_production_url ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension_group: status_category_changed {
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
    sql: ${TABLE}.status_category_changed ;;
  }

  dimension: steps_to_reproduce {
    type: string
    sql: ${TABLE}.steps_to_reproduce ;;
  }

  dimension: story_point_estimate {
    type: number
    sql: ${TABLE}.story_point_estimate ;;
  }

  dimension: story_points {
    type: number
    sql: ${TABLE}.story_points ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension_group: target_end {
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
    sql: ${TABLE}.target_end ;;
  }

  dimension_group: target_start {
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
    sql: ${TABLE}.target_start ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}.time_spent ;;
  }

  dimension: type_of_bug {
    type: number
    sql: ${TABLE}.type_of_bug ;;
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

  dimension: version_of_the_app {
    type: string
    sql: ${TABLE}.version_of_the_app ;;
  }

  dimension: work_ratio {
    type: number
    sql: ${TABLE}.work_ratio ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      epic_name,
      device_name,
      issue_affects_versions.count,
      issue_actual_result_history.count,
      comment.count,
      issue_aggregate_time_spent_history.count,
      issue_aggregate_original_estimate_history.count,
      issue_automation_coverage_history.count,
      issue_aggregate_remaining_estimate_history.count,
      issue_component_history.count,
      issue_creator_history.count,
      issue_assignee_history.count,
      issue_board.count,
      issue_created_history.count,
      issue_components.count,
      issue_current_implementation_history.count,
      issue_description_history.count,
      issue_development_history.count,
      issue_device_name_history.count,
      issue_epic_color_history.count,
      issue_due_date_history.count,
      issue_epic_link_history.count,
      issue_environment_history.count,
      issue_duedate_history.count,
      issue_epic_status_history.count,
      issue_epic_name_history.count,
      issue_fix_details_history.count,
      issue_expected_result_history.count,
      issue_fix_version_history.count,
      issue_flagged.count,
      issue_fix_versions_history.count,
      issue_fix_versions.count,
      issue_flagged_history.count,
      issue_issue_color_history.count,
      issue_issuetype_history.count,
      issue_labels_history.count,
      issue_issue_type_history.count,
      issue_link.count,
      issue_last_viewed_history.count,
      issue_os_history.count,
      issue_os_version_history.count,
      issue_original_estimate_history.count,
      issue_parent_link_history.count,
      issue_product_owner.count,
      issue_priority_history.count,
      issue_product_owner_history.count,
      issue_productboard_url_history.count,
      issue_labels.count,
      issue_project_history.count,
      issue_reproducible_history.count,
      issue_remaining_estimate_history.count,
      issue_request_participants.count,
      issue_resolution_history.count,
      issue_reporter_history.count,
      issue_resolved_history.count,
      issue_root_cause_history.count,
      issue_sprint_history.count,
      issue_sprint.count,
      issue_server_staging_automation_production_url_history.count,
      issue_steps_to_reproduce_history.count,
      issue_status_category_changed_history.count,
      issue_start_date_history.count,
      issue_story_point_estimate_history.count,
      issue_status_history.count,
      issue_story_points_history.count,
      issue_target_start_history.count,
      issue_summary_history.count,
      issue_sub_tasks_history.count,
      issue_sub_tasks.count,
      issue_tech_lead.count,
      issue_tech_lead_history.count,
      issue_target_end_history.count,
      issue_timeestimate_history.count,
      issue_timespent_history.count,
      issue_time_spent_history.count,
      issue_timeoriginalestimate_history.count,
      issue_version_history.count,
      issue_updated_history.count,
      issue_type_of_bug_history.count,
      issue_version_of_the_app_history.count,
      issue_work_ratio_history.count,
      worklog.count
    ]
  }
}
