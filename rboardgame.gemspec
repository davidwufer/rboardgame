$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'rboardgame/version'

Gem::Specification.new do |s|
 s.name        = "rboardgame"
 s.version     = RBoardGame::VERSION
 s.authors     = ["David Wu"]
 s.email       = ["davidcnwu@gmail.com"]

 s.summary     = "Board game framework for two-player perfect-information games in Ruby"
 s.description = "Allows easy creation of board games"
 s.homepage    = "https://github.com/davidcwu/rboardgame"

 s.files       = Dir.glob("lib/**/*.rb")
 s.test_files  = Dir.glob("spec/**/*.rb")

 s.add_development_dependency('rspec')
end