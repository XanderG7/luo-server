## This file will contain all available services to search
## for characters.

# This service allows the user to search the for a specific
# character by name
get '/search/character/name/:name' do |name|
	"Searching for character, name: <b>#{name}</b>"
end

# This service allows the user to search the for a specific
# character by ID
get '/search/character/id/:id' do |id|
	"Searching for character, id: <b>#{id}</b>"
end

