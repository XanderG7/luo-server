## This file will contain all available services to gather info
## about a specific player.

# This service will return the player information based on his ID
get '/player/:id' do |id|
	"Looking at player <b>#{id}</b>"
end

