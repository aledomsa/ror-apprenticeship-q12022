json.extract! pokemon, :id, :id, :abilities, :height, :images, :moves, :name, :pokemon_id, :stats, :types, :url, :weight, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
