$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'sinatra/content_for2'

RSpec.configure do |config|
  config.mock_with :rr
end
