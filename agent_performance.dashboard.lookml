- dashboard: agent_performance
  title: AAFES Agent Performance POC
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Avg Client Sentiment Category Value
    name: Avg Client Sentiment Category Value
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.agent_id, insights_data.average_client_sentiment_category_value]
    filters:
      insights_data.status: ''
    sorts: [insights_data.average_client_sentiment_category_value]
    limit: 25
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
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 0
    col: 6
    width: 5
    height: 5
  - title: Common Topics Handled
    name: Common Topics Handled
    model: ccai_insights
    explore: insights_data
    type: looker_bar
    fields: [insights_data.conversation_count, insights_data.client_sentiment_category,
      insights_data__topics.name]
    pivots: [insights_data.client_sentiment_category]
    sorts: [insights_data.conversation_count desc 0, insights_data.client_sentiment_category]
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
    series_types: {}
    series_colors:
      Neutral: "#80868B"
      Positive: "#1a9c30"
      Mixed: "#079c98"
      Negative: "#EA4335"
    value_labels: legend
    label_type: labPer
    inner_radius: 40
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
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 10
    col: 0
    width: 23
    height: 8
  - title: Client Sentiment Category Breakdown
    name: Client Sentiment Category Breakdown
    model: ccai_insights
    explore: insights_data
    type: looker_pie
    fields: [insights_data.conversation_count, insights_data.client_sentiment_category]
    sorts: [insights_data.conversation_count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    series_colors:
      Neutral: "#80868B"
      Positive: "#1a9c30"
      Mixed: "#079c98"
      Negative: "#EA4335"
    series_types: {}
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
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 0
    col: 17
    width: 6
    height: 5
  - title: Total Conversations
    name: Total Conversations
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.conversation_count]
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
    series_types: {}
    defaults_version: 1
    listen:
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Agent ID
    name: Agent ID
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.agent_id]
    sorts: [insights_data.agent_id]
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
    series_types: {}
    defaults_version: 1
    listen:
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Avg Agent Sentiment Category Value
    name: Avg Agent Sentiment Category Value
    model: ccai_insights
    explore: insights_data
    type: single_value
    fields: [insights_data.agent_id, insights_data.average_agent_sentiment_category_value]
    filters:
      insights_data.status: ''
    sorts: [insights_data.average_agent_sentiment_category_value desc]
    limit: 25
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
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 0
    col: 11
    width: 6
    height: 5
  - title: Client and Agent Sentiment Over Time
    name: Client and Agent Sentiment Over Time
    model: ccai_insights
    explore: insights_data
    type: looker_line
    fields: [insights_data.average_client_sentiment_category_value, insights_data.start_date,
      insights_data.average_agent_sentiment_category_value]
    fill_fields: [insights_data.start_date]
    filters:
      insights_data.status: ''
    sorts: [insights_data.average_client_sentiment_category_value]
    limit: 25
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Client Sentiment Category: insights_data.client_sentiment_category
      Agent ID: insights_data.agent_id
      Import Date: insights_data.load_date
      Conversation Type: insights_data.type
      Start Date: insights_data.start_date
    row: 5
    col: 0
    width: 23
    height: 5
  filters:
  - name: Agent ID
    title: Agent ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.agent_id
  - name: Import Date
    title: Import Date
    type: field_filter
    default_value: 7 day
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
    default_value: 7 day
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
  - name: Conversation Type
    title: Conversation Type
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
  - name: Client Sentiment Category
    title: Client Sentiment Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: ccai_insights
    explore: insights_data
    listens_to_filters: []
    field: insights_data.client_sentiment_category
