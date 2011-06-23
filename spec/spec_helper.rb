$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'sinatra/content_for2'

require 'rspec'
require 'rspec/autorun'

RSpec.configure do |conf|
  conf.mock_with :rr
end

