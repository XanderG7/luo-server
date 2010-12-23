require 'character_search'

class SearchCharacterTest < Test::Unit::TestCase
	def setup
		@path_root = "/search/character"
	end

	def test_search_by_name
		get "#{@path_root}/name/some_character_name"
		assert last_response.ok?
		assert_equal 'Searching for character, name: <b>some_character_name</b>', last_response.body
	end

	def test_search_by_id
		get "#{@path_root}/id/098765"
		assert last_response.ok?
		assert_equal 'Searching for character, id: <b>098765</b>', last_response.body
	end
end

