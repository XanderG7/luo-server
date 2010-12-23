require 'character_info'

class CharacterInfoTest < Test::Unit::TestCase
	def setup
		@path_root = "/character"
	end

	def test_show
		get "#{@path_root}/098765"
		assert last_response.ok?
		assert_equal 'Looking at character <b>098765</b>', last_response.body
	end
end

