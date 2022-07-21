connection: "aafes-cx-poc"
#Author Sergio Castillo.
label: "AAFES CCAI Agent Assist POC"

# include all the views
#include: "/views/**/*.view"
# include all the dashboards
#include: "../*.dashboard"

#Views
include: "/views/aa_feedback.view.lkml"             # Including only required views
include: "/views/next_sentences.view.lkml"          # Including only required views

#Dashboards
include: "/dashboards/agent_assist_metrics.dashboard.lookml"   # Including LookML dashboard called agent_assist_metrics

datagroup: gc_ccai_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: gc_ccai_default_datagroup

explore: aa_feedback {
  label: "Agent Assist Feedback"
  join: aa_feedback__words {
    view_label: "Aa Feedback: Words"
    sql: LEFT JOIN UNNEST(${aa_feedback.words}) as aa_feedback__words ;;
    relationship: one_to_many
  }

  join: aa_feedback__issues {
    view_label: "Aa Feedback: Issues"
    sql: LEFT JOIN UNNEST(${aa_feedback.issues}) as aa_feedback__issues ;;
    relationship: one_to_many
  }

  join: aa_feedback__entities {
    view_label: "Aa Feedback: Entities"
    sql: LEFT JOIN UNNEST(${aa_feedback.entities}) as aa_feedback__entities ;;
    relationship: one_to_many
  }

  join: aa_feedback__sentences {
    view_label: "Aa Feedback: Sentences"
    sql: LEFT JOIN UNNEST(${aa_feedback.sentences}) as aa_feedback__sentences ;;
    relationship: one_to_many
  }

  join: next_sentences {
    view_label: "Aa Feedback: Next Sentence"
    sql_on: ${aa_feedback__sentences.id} = ${next_sentences.id} ;;
    relationship: one_to_one
  }

  join: aa_feedback__sentences__annotations {
    view_label: "Aa Feedback: Sentences Annotations"
    sql: LEFT JOIN UNNEST(${aa_feedback__sentences.annotations}) as aa_feedback__sentences__annotations ;;
    relationship: one_to_many
  }

  join: aa_feedback__sentences__intent_match_data {
    view_label: "Aa Feedback: Sentences Intentmatchdata"
    sql: LEFT JOIN UNNEST(${aa_feedback__sentences.intent_match_data}) as aa_feedback__sentences__intent_match_data ;;
    relationship: one_to_many
  }

  join: aa_feedback__sentences__phrase_match_data {
    view_label: "Aa Feedback: Sentences Phrasematchdata"
    sql: LEFT JOIN UNNEST(${aa_feedback__sentences.phrase_match_data}) as aa_feedback__sentences__phrase_match_data ;;
    relationship: one_to_many
  }
}
