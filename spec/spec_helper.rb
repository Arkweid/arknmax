$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'coveralls'
Coveralls.wear!

require 'arknmax'

RSpec.configure do |config|
  config.order = :random
end
