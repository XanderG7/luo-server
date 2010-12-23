require 'player_info'

class PlayerInfoTest < Test::Unit::TestCase
	def setup
		@path_root = "/player"
	end

	def test_show
		get "#{@path_root}/123456"
		assert last_response.ok?
		assert_equal 'Looking at player <b>123456</b>', last_response.body
	end
end

