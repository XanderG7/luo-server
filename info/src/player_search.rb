## This file will contain all available services to search
## for players.

# This service allows the user to search the for a specific
# player by name
get '/search/player/name/:name' do |name|
	"Searching for player, name: <b>#{name}</b>"
end

# This service allows the user to search the for a specific
# player by id
get '/search/player/id/:id' do |id|
	"Searching for player, id: <b>#{id}</b>"
end

