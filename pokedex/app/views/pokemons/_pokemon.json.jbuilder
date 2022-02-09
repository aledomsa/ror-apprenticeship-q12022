json.extract! pokemon, :id, :ability_list, :height, :image_list, :move_list, :name, :pokemon_id, :stat_list, :type_list, :url, :weight, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
