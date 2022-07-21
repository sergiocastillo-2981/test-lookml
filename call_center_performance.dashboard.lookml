- dashboard: call_center_performance
  title: AAFES Call Center Performance POC
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Total Conversations
    name: Total Conversations
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.conversation_count]
    filters:
      insights_data.conversation_count: NOT NULL
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous Timeframe
    defaults_version: 1
    hidden_fields:
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 2
    col: 7
    width: 5
    height: 2
  - title: Avg Conv Length (min)
    name: Avg Conv Length (min)
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.average_conversation_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 2
    col: 12
    width: 5
    height: 2
  - title: Average Turn Count
    name: Average Turn Count
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.average_turn_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 2
    col: 17
    width: 5
    height: 2
  - title: Smart Highlights by Call Status
    name: Smart Highlights by Call Status
    model: ccai_insights
    explore: insights_data
    type: looker_donut_multiples
    fields: [insights_data.conversation_count, insights_data__sentences__intent_match_data.display_name,
      insights_data.status]
    pivots: [insights_data__sentences__intent_match_data.display_name]
    sorts: [insights_data.conversation_count desc 0, insights_data.status, insights_data__sentences__intent_match_data.display_name]
    limit: 500
    column_limit: 50
    show_value_labels: false
    font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 32
    col: 6
    width: 9
    height: 8
  - title: Negative Conv % of Total
    name: Negative Conv % of Total
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.bad_sentiment_ratio]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous Timeframe
    conditional_formatting: [{type: less than, value: 0.2, background_color: '', font_color: "#137333",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0.7, background_color: '', font_color: "#F9AB00", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 0.7, background_color: '', font_color: "#EA4335", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: expanded
    note_display: below
    note_text: 'Goal: < 20%'
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 4
    col: 12
    width: 5
    height: 2
  - title: Avg Turn When Transfer Occurred
    name: Avg Turn When Transfer Occurred
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [human_agent_turns.average_first_turn_human_agent]
    sorts: [human_agent_turns.average_first_turn_human_agent desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Start Date: insights_data.start_date
    row: 18
    col: 0
    width: 5
    height: 3
  - title: Time of Day When Transfers Occur
    name: Time of Day When Transfers Occur
    model: ccai_insights
    explore: insights_data
    type: looker_column
    fields: [insights_data.load_hour_of_day, insights_data.conversation_count, insights_data.client_sentiment_category]
    pivots: [insights_data.client_sentiment_category]
    fill_fields: [insights_data.load_hour_of_day]
    filters:
      insights_data.type: Human Agent
    sorts: [insights_data.load_hour_of_day, insights_data.client_sentiment_category]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Start Date: insights_data.start_date
    row: 15
    col: 14
    width: 10
    height: 6
  - name: Conversations Transferred to Human Agent
    type: text
    title_text: Conversations Transferred to Human Agent
    subtitle_text: What calls are being transferred to a human agent and when is that
      transfer taking place?
    body_text: <div align="center">(These tiles are not affected by the "Type" filter.)
    row: 12
    col: 0
    width: 24
    height: 3
  - title: Total Transferred Conversations
    name: Total Transferred Conversations
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.conversation_count]
    filters:
      human_agent_turns.first_turn_human_agent: "-NULL"
    sorts: [insights_data.conversation_count desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Start Date: insights_data.start_date
    row: 15
    col: 0
    width: 5
    height: 3
  - name: High Level Metrics
    type: text
    title_text: High Level Metrics
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Popular Entities
    name: Popular Entities
    model: ccai_insights
    explore: insights_data
    type: looker_wordcloud
    fields: [insights_data.conversation_count, insights_data__entities.name]
    sorts: [insights_data.conversation_count desc]
    limit: 20
    column_limit: 50
    color_application: undefined
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 32
    col: 0
    width: 6
    height: 8
  - title: Client Sentiment by Day of Week
    name: Client Sentiment by Day of Week
    model: ccai_insights
    explore: insights_data
    type: looker_column
    fields: [insights_data.conversation_count, insights_data.load_day_of_week, insights_data.client_sentiment_category]
    pivots: [insights_data.client_sentiment_category]
    fill_fields: [insights_data.load_day_of_week]
    sorts: [insights_data.conversation_count desc 0, insights_data.client_sentiment_category]
    limit: 20
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    series_types: {}
    series_colors:
      Positive - insights_data.conversation_count: "#7CB342"
      Neutral - insights_data.conversation_count: "#80868B"
      Negative - insights_data.conversation_count: "#EA4335"
      Mixed - insights_data.conversation_count: "#12B5CB"
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 24
    col: 13
    width: 11
    height: 6
  - name: Sentiment Analysis
    type: text
    title_text: Sentiment Analysis
    subtitle_text: ''
    body_text: |-
      Sentiment Score indicates the overall emotion present. <br/>
      Sentiment Magnitude indicates how much emotional content is present. <br/>
      Sentiment Category is determined by a combination of sentiment score and magnitude and should be calibrated to a specific business use case.
    row: 21
    col: 0
    width: 24
    height: 3
  - title: Top 10 Topics
    name: Top 10 Topics
    model: ccai_insights
    explore: insights_data
    type: looker_bar
    fields: [insights_data.conversation_count, insights_data__topics.name]
    filters: {}
    sorts: [insights_data.conversation_count desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    series_types: {}
    series_colors:
      Mixed - insights_data.conversation_count: "#079c98"
      Negative - insights_data.conversation_count: "#EA4335"
      Positive - insights_data.conversation_count: "#1a9c30"
      Neutral - insights_data.conversation_count: "#80868B"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 40
    col: 0
    width: 12
    height: 12
  - name: Intents, Entities, Topics
    type: text
    title_text: Intents, Entities, Topics
    subtitle_text: What types of conversations do we handle?
    body_text: ''
    row: 30
    col: 0
    width: 24
    height: 2
  - title: Conversations Imported and Analyzed
    name: Conversations Imported and Analyzed
    model: ccai_insights
    explore: insights_data
    type: looker_column
    fields: [insights_data.conversation_count, insights_data.load_date, insights_data.type]
    pivots: [insights_data.type]
    fill_fields: [insights_data.load_date]
    sorts: [insights_data.conversation_count desc 0, insights_data.type]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous Timeframe
    defaults_version: 1
    hidden_fields:
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Avg Client Sent Score
    name: Avg Client Sent Score
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.average_client_sentiment_score]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: 0, background_color: '', font_color: "#F9AB00",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 0, background_color: '', font_color: "#137333", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0, background_color: '', font_color: "#EA4335", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 24
    col: 0
    width: 3
    height: 3
  - title: Avg Agent Sent Score
    name: Avg Agent Sent Score
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.average_agent_sentiment_score]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: 0, background_color: '', font_color: "#F9AB00",
        color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: greater
          than, value: 0, background_color: '', font_color: "#137333", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}, {type: less
          than, value: 0, background_color: '', font_color: "#EA4335", color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 27
    col: 0
    width: 3
    height: 3
  - title: Phrase Match When Transferred to Human Agent
    name: Phrase Match When Transferred to Human Agent
    model: ccai_insights
    explore: insights_data
    type: looker_grid
    fields: [insights_data__sentences__phrase_match_data.display_name, insights_data.conversation_count,
      human_agent_turns.average_first_turn_human_agent]
    filters:
      insights_data.type: Human Agent
    sorts: [insights_data.conversation_count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    color_application: undefined
    note_state: collapsed
    note_display: below
    note_text: Higher Turn number means it took longer to transfer the call
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Start Date: insights_data.start_date
    row: 15
    col: 5
    width: 9
    height: 6
  - title: Total Contained Conversations
    name: Total Contained Conversations
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.contained_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of Total
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: A conversation is considered contained if it was never handed off to
      a human agent.
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 4
    col: 7
    width: 5
    height: 2
  - title: Client Sentiment Makeup
    name: Client Sentiment Makeup
    model: ccai_insights
    explore: insights_data
    type: looker_area
    fields: [insights_data.conversation_count, insights_data.client_sentiment_category,
      insights_data.start_date]
    pivots: [insights_data.client_sentiment_category]
    fill_fields: [insights_data.start_date]
    sorts: [insights_data.client_sentiment_category, insights_data.start_date]
    limit: 20
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    hidden_series: []
    series_types: {}
    series_colors:
      Positive - insights_data.conversation_count: "#7CB342"
      Negative - insights_data.conversation_count: "#EA4335"
      Neutral - insights_data.conversation_count: "#80868B"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 24
    col: 3
    width: 10
    height: 6
  - title: Avg Daily Conversations
    name: Avg Daily Conversations
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [daily_facts.avg_daily_conversations]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 2
    col: 2
    width: 5
    height: 2
  - title: Avg Daily Contained Conversations
    name: Avg Daily Contained Conversations
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [daily_facts.avg_daily_contained_conversations]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: of Total
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: A conversation is considered contained if it was never handed off to
      a human agent.
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 4
    col: 2
    width: 5
    height: 2
  - title: Positive Conv % of Total
    name: Positive Conv % of Total
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.good_sentiment_ratio]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: vs Previous Timeframe
    conditional_formatting: [{type: greater than, value: 0.2, background_color: '',
        font_color: "#137333", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.7, background_color: '',
        font_color: "#F9AB00", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0.2, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: expanded
    note_display: below
    note_text: 'Goal: >= 20%'
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 4
    col: 17
    width: 5
    height: 2
  - name: Agent Performance
    type: text
    title_text: Agent Performance
    subtitle_text: Which agents need help?
    body_text: ''
    row: 52
    col: 0
    width: 24
    height: 2
  - title: Agents Handling Long Conversations
    name: Agents Handling Long Conversations
    model: ccai_insights
    explore: insights_data
    type: looker_grid
    fields: [insights_data.average_conversation_minutes, insights_data.agent_id, insights_data.conversation_count]
    sorts: [insights_data.average_conversation_minutes desc]
    limit: 25
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 54
    col: 12
    width: 12
    height: 12
  - title: Agents With Low Average Client Sentiment
    name: Agents With Low Average Client Sentiment
    model: ccai_insights
    explore: insights_data
    type: looker_grid
    fields: [insights_data.agent_id, insights_data.average_client_sentiment_category_value,
      insights_data.conversation_count]
    filters: {}
    sorts: [insights_data.average_client_sentiment_category_value]
    limit: 25
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 54
    col: 0
    width: 12
    height: 12
  - title: Intents and Highlights Identified for Long Conversations
    name: Intents and Highlights Identified for Long Conversations
    model: ccai_insights
    explore: insights_data
    type: looker_grid
    fields: [insights_data__sentences__intent_match_data.display_name, insights_data__sentences__phrase_match_data.display_name,
      insights_data__sentences__dialogflow_intent_match_data.display_name, insights_data.average_conversation_minutes]
    filters:
      insights_data.average_conversation_minutes: ">25"
    sorts: [insights_data.average_conversation_minutes desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Client Sentiment Category: insights_data.client_sentiment_category
      Start Date: insights_data.start_date
    row: 40
    col: 12
    width: 12
    height: 12
  - title: Custom Highlights by Call Status
    name: Custom Highlights by Call Status
    model: ccai_insights
    explore: insights_data
    type: looker_donut_multiples
    fields: [insights_data.conversation_count, insights_data.status, insights_data__sentences__phrase_match_data.display_name]
    pivots: [insights_data__sentences__phrase_match_data.display_name]
    sorts: [insights_data.conversation_count desc 0, insights_data.status, insights_data__sentences__phrase_match_data.display_name]
    limit: 500
    column_limit: 50
    show_value_labels: false
    font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    listen:
      Import Date: insights_data.load_date
      Status: insights_data.status
      Client Sentiment Category: insights_data.client_sentiment_category
      Type: insights_data.type
      Start Date: insights_data.start_date
    row: 32
    col: 15
    width: 9
    height: 8
  filters:
  - name: Type
    title: Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.type
  - name: Import Date
    title: Import Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.load_date
  - name: Start Date
    title: Start Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.start_date
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.status
  - name: Client Sentiment Category
    title: Client Sentiment Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.client_sentiment_category
