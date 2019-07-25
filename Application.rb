#class Application : pas de class application à mettre ?

  require 'bundler'
  Bundler.require

  require_relative 'lib/game'
  require_relative 'lib/player'
  require_relative 'lib/board'
  require_relative 'lib/board_case'
  require_relative 'lib/show' #but du rangement dans view ? 

  my_game = Game.new

binding.pry # à mettre ?
