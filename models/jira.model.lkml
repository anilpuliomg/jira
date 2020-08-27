connection: "jira"


# include all the views
include: "/views/**/*.view"

datagroup: jira_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jira_default_datagroup

explore: board {}

explore: comment {
  join: issue {
    type: left_outer
    sql_on: ${comment.issue_id} = ${issue.id} ;;
    relationship: many_to_one
  }
}

# explore: epic {}
#
# explore: field_option {}
#
# explore: fivetran_audit {}
#
# explore: issue {}
#
# explore: issue_actual_result_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_actual_result_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_affects_versions {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_affects_versions.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: version {
#     type: left_outer
#     sql_on: ${issue_affects_versions.version_id} = ${version.id} ;;
#     relationship: many_to_one
#   }
#
#   join: project {
#     type: left_outer
#     sql_on: ${version.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_aggregate_original_estimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_aggregate_original_estimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_aggregate_remaining_estimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_aggregate_remaining_estimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_aggregate_time_spent_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_aggregate_time_spent_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_assignee_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_assignee_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_assignee_history.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_automation_coverage_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_automation_coverage_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_board {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_board.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: board {
#     type: left_outer
#     sql_on: ${issue_board.board_id} = ${board.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_component_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_component_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_components {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_components.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_created_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_created_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_creator_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_creator_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_creator_history.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_current_implementation_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_current_implementation_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_description_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_description_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_development_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_development_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_device_name_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_device_name_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_due_date_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_due_date_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_duedate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_duedate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_environment_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_environment_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_epic_color_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_epic_color_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_epic_link_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_epic_link_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: epic {
#     type: left_outer
#     sql_on: ${issue_epic_link_history.epic_id} = ${epic.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_epic_name_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_epic_name_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_epic_status_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_epic_status_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: field_option {
#     type: left_outer
#     sql_on: ${issue_epic_status_history.field_option_id} = ${field_option.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_expected_result_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_expected_result_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_fix_details_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_fix_details_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_fix_version_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_fix_version_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: version {
#     type: left_outer
#     sql_on: ${issue_fix_version_history.version_id} = ${version.id} ;;
#     relationship: many_to_one
#   }
#
#   join: project {
#     type: left_outer
#     sql_on: ${version.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_fix_versions {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_fix_versions.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: version {
#     type: left_outer
#     sql_on: ${issue_fix_versions.version_id} = ${version.id} ;;
#     relationship: many_to_one
#   }
#
#   join: project {
#     type: left_outer
#     sql_on: ${version.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_fix_versions_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_fix_versions_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: version {
#     type: left_outer
#     sql_on: ${issue_fix_versions_history.version_id} = ${version.id} ;;
#     relationship: many_to_one
#   }
#
#   join: project {
#     type: left_outer
#     sql_on: ${version.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_flagged {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_flagged.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: field_option {
#     type: left_outer
#     sql_on: ${issue_flagged.field_option_id} = ${field_option.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_flagged_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_flagged_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: field_option {
#     type: left_outer
#     sql_on: ${issue_flagged_history.field_option_id} = ${field_option.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_issue_color_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_issue_color_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_issue_type_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_issue_type_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: issue_type {
#     type: left_outer
#     sql_on: ${issue_issue_type_history.issue_type_id} = ${issue_type.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_issuetype_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_issuetype_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: issue_type {
#     type: left_outer
#     sql_on: ${issue_issuetype_history.issue_type_id} = ${issue_type.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_labels {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_labels.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_labels_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_labels_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_last_viewed_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_last_viewed_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_link {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_link.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_original_estimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_original_estimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_os_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_os_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: field_option {
#     type: left_outer
#     sql_on: ${issue_os_history.field_option_id} = ${field_option.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_os_version_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_os_version_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_parent_link_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_parent_link_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_priority_history {
#   join: priority {
#     type: left_outer
#     sql_on: ${issue_priority_history.priority_id} = ${priority.id} ;;
#     relationship: many_to_one
#   }
#
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_priority_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_product_owner {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_product_owner.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_product_owner.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_product_owner_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_product_owner_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_product_owner_history.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_productboard_url_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_productboard_url_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_project_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_project_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: project {
#     type: left_outer
#     sql_on: ${issue_project_history.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_remaining_estimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_remaining_estimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_reporter_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_reporter_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_reporter_history.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_reproducible_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_reproducible_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: field_option {
#     type: left_outer
#     sql_on: ${issue_reproducible_history.field_option_id} = ${field_option.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_request_participants {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_request_participants.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_request_participants.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_resolution_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_resolution_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: resolution {
#     type: left_outer
#     sql_on: ${issue_resolution_history.resolution_id} = ${resolution.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_resolved_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_resolved_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_root_cause_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_root_cause_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_server_staging_automation_production_url_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_server_staging_automation_production_url_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_sprint {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_sprint.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: sprint {
#     type: left_outer
#     sql_on: ${issue_sprint.sprint_id} = ${sprint.id} ;;
#     relationship: many_to_one
#   }
#
#   join: board {
#     type: left_outer
#     sql_on: ${sprint.board_id} = ${board.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_sprint_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_sprint_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: sprint {
#     type: left_outer
#     sql_on: ${issue_sprint_history.sprint_id} = ${sprint.id} ;;
#     relationship: many_to_one
#   }
#
#   join: board {
#     type: left_outer
#     sql_on: ${sprint.board_id} = ${board.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_start_date_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_start_date_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_status_category_changed_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_status_category_changed_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_status_history {
#   join: status {
#     type: left_outer
#     sql_on: ${issue_status_history.status_id} = ${status.id} ;;
#     relationship: many_to_one
#   }
#
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_status_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: status_category {
#     type: left_outer
#     sql_on: ${status.status_category_id} = ${status_category.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_steps_to_reproduce_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_steps_to_reproduce_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_story_point_estimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_story_point_estimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_story_points_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_story_points_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_sub_tasks {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_sub_tasks.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_sub_tasks_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_sub_tasks_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_summary_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_summary_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_target_end_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_target_end_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_target_start_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_target_start_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_tech_lead {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_tech_lead.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_tech_lead.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_tech_lead_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_tech_lead_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: user {
#     type: left_outer
#     sql_on: ${issue_tech_lead_history.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_time_spent_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_time_spent_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_timeestimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_timeestimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_timeoriginalestimate_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_timeoriginalestimate_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_timespent_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_timespent_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_type {}
#
# explore: issue_type_of_bug_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_type_of_bug_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: field_option {
#     type: left_outer
#     sql_on: ${issue_type_of_bug_history.field_option_id} = ${field_option.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_updated_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_updated_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_version_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_version_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
#
#   join: version {
#     type: left_outer
#     sql_on: ${issue_version_history.version_id} = ${version.id} ;;
#     relationship: many_to_one
#   }
#
#   join: project {
#     type: left_outer
#     sql_on: ${version.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_version_of_the_app_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_version_of_the_app_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: issue_work_ratio_history {
#   join: issue {
#     type: left_outer
#     sql_on: ${issue_work_ratio_history.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: priority {}
#
# explore: project {}
#
# explore: project_board {
#   join: project {
#     type: left_outer
#     sql_on: ${project_board.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
#
#   join: board {
#     type: left_outer
#     sql_on: ${project_board.board_id} = ${board.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: resolution {}
#
# explore: sprint {
#   join: board {
#     type: left_outer
#     sql_on: ${sprint.board_id} = ${board.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: status {
#   join: status_category {
#     type: left_outer
#     sql_on: ${status.status_category_id} = ${status_category.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: status_category {}
#
# explore: user {}
#
# explore: user_group {
#   join: user {
#     type: left_outer
#     sql_on: ${user_group.user_id} = ${user.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: version {
#   join: project {
#     type: left_outer
#     sql_on: ${version.project_id} = ${project.id} ;;
#     relationship: many_to_one
#   }
# }
#
# explore: worklog {
#   join: issue {
#     type: left_outer
#     sql_on: ${worklog.issue_id} = ${issue.id} ;;
#     relationship: many_to_one
#   }
# }
