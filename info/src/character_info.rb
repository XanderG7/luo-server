## This file will contain all available services to gather info
## about a specific character.

# This service will return the character information based on his ID
get '/character/:id' do |id|
	"Looking at character <b>#{id}</b>"
end

