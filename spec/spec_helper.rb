require 'rspec'
require 'rboardgame'

include RBoardGame

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = 'documentation'
end
