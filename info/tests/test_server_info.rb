require 'server_info'

class ServerInfoTest < Test::Unit::TestCase
	def setup
		@path_root = "/server"
	end

	def test_uptime
		get "#{@path_root}/uptime"
		assert last_response.ok?
		assert_equal 'Server uptime is Bleh', last_response.body
	end
end

