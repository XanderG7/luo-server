require 'rubygems'
require 'sinatra'
require 'test/unit'
require 'rack/test'

# Config
ENV['RACK_ENV'] = 'test'
set :environment, :test
set :run, false

# Bases for the other tests
class Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end
end

# Load submodules
require 'test_server_info'
require 'test_player_search'
require 'test_character_search'
require 'test_player_info'
require 'test_character_info'

