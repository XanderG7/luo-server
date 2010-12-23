require 'player_search'

class SearchPlayerTest < Test::Unit::TestCase
	def setup
		@path_root = "/search/player"
	end

	def test_search_by_name
		get "#{@path_root}/name/some_player_name"
		assert last_response.ok?
		assert_equal 'Searching for player, name: <b>some_player_name</b>', last_response.body
	end

	def test_search_by_id
		get "#{@path_root}/id/123456"
		assert last_response.ok?
		assert_equal 'Searching for player, id: <b>123456</b>', last_response.body
	end
end

