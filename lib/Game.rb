class Game
#  attr_accessor :player, :status_player, :board


# def initialize
#  @Player = [player1.new,player2.new]
#  @Board = Board.new
#  @status_player = "on going"
# end


# def play_turn


 # end

# def new_round
#  puts "Would you like ro continue ? (Y/N)"
#  return answer = gets.chomp
#  if answer = "yes"
#    Board.new #mettre turn

#  else
#    puts "Thank you for playing ! Bye !"

#  end
#end

#def game_end
#  until @winner || turn == 9
#    if @winner #d'ou vient cette classe ?
#      puts "#{@winner.name} wins!"
#   else
#     puts "Draw!"
#   end


attr_accessor :players , :board , :current_player, :other_player

	def initialize

		puts "Joueur 1 : "
		print ">"
		name_player1 = gets.chomp
		player_1 = Player.new(name_player1)
		puts "#{name_player1} obtient le signe #{player_1.sign} !"

		puts "Joueur 2 : "
		print ">"
		name_player2 = gets.chomp
		player_2 = Player.new(name_player2)
		puts "#{name_player2} obtient le signe #{player_2.sign} !"

		@players = [player_1, player_2]
		@current_player, @other_player = @players.shuffle
		puts "#{@current_player.name} a été sélectionné aléatoirement pour commencer la partie."
		puts " "
		puts "QUE LA PARTIE COMMENCE ! [ENTER]"
		gets.chomp
		@board = Board.new

		perform

	end



	def choose_action

  		puts "#{@current_player.name}: ENTRE LA POSITION SUR LAQUELLE TU VEUX TE PLACER :"
  		choosen_action = gets.chomp
  		puts "Choix effectué."

  		return choosen_action

	end




	def choosen_action_result(choosen_action)


	  if choosen_action == "A1"
	  	@board.array_board_cases[0][0].value = @current_player.sign

	  elsif choosen_action == "a1"
	  	@board.array_board_cases[0][0].value = @current_player.sign

	  elsif choosen_action == "A2"
	  	@board.array_board_cases[0][1].value = @current_player.sign

	  elsif choosen_action == "a2"
	  	@board.array_board_cases[0][1].value = @current_player.sign

	  elsif choosen_action == "A3"
	  	@board.array_board_cases[0][2].value = @current_player.sign

	  elsif choosen_action == "a3"
	  	@board.array_board_cases[0][2].value = @current_player.sign

	  elsif choosen_action == "B1"
	  	@board.array_board_cases[1][0].value = @current_player.sign

	  elsif choosen_action == "b1"
	  	@board.array_board_cases[1][0].value = @current_player.sign

	  elsif choosen_action == "B2"
	  	@board.array_board_cases[1][1].value = @current_player.sign

	  elsif choosen_action == "b2"
	  	@board.array_board_cases[1][1].value = @current_player.sign

	  elsif choosen_action == "B3"
	  	@board.array_board_cases[1][2].value = @current_player.sign

	  elsif choosen_action == "b3"
	  	@board.array_board_cases[1][2].value = @current_player.sign

	  elsif choosen_action == "C1"
	  	@board.array_board_cases[2][0].value = @current_player.sign

	  elsif choosen_action == "c1"
	  	@board.array_board_cases[2][0].value = @current_player.sign

	  elsif choosen_action == "C2"
	  	@board.array_board_cases[2][1].value = @current_player.sign

	  elsif choosen_action == "c2"
	  	@board.array_board_cases[2][1].value = @current_player.sign

	  elsif choosen_action == "C3"
	  	@board.array_board_cases[2][2].value = @current_player.sign

	  elsif choosen_action == "c3"
	  	@board.array_board_cases[2][2].value = @current_player.sign

	  else puts "CETTE POSITION EST INEXISTANTE."

	  end

	end




	def switch_players

		@current_player, @other_player = @other_player, @current_player

	end








	def perform

		turn = 0

		while turn < 9

			Show.new(@board)
			choosen_action = choose_action
			# until @board.case_empty?(choosen_action) #choosen_action > 0 && choice < 10 &&
   #          	puts "Mauvaise case ! Réessaie pour voir"
   #          	choosen_action = gets.chomp.to_i # sinon on redemande un choix au joueur
   #          end
			choosen_action_result(choosen_action)
			system "clear"

			if @board.victory?
				puts "#{@current_player.name} a gagné ! FELICITATION !"
				Show.new(@board)
				break
			end


			switch_players

			turn += 1

		end

		if !@board.victory?
			system "clear"
		puts "La partie se termine sur une égalité."
		Show.new(@board)
	end

	end










end
