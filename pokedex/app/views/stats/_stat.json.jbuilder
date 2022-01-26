json.extract! stat, :id, :effort_value, :name, :stat_value, :url, :created_at, :updated_at
json.url stat_url(stat, format: :json)
