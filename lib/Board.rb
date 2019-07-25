class Board
  attr_accessor :cells

  def initialize

  		@cells = [] #pas compris ; besoin d'explications ?

  		# 1.upto(9) do |x|
  		# 	array_board_cases << BoardCase.new(x.to_s)
  		# end


  		case1 = BoardCase.new
  		case2 = BoardCase.new
  		case3 = BoardCase.new
  		case4 = BoardCase.new
  		case5 = BoardCase.new
  		case6 = BoardCase.new
  		case7 = BoardCase.new
  		case8 = BoardCase.new
  		case9 = BoardCase.new

  		 @cells = [[case1, case2, case3], [case4, case5, case6], [case7, case8, case9]]
  						#   A1=[0][0]		A2=[0][1]		A3=[0][2]		B1=[1][0]		B2=[1][1]		B3=[1][2]		C1=[2][0] 		C2=[2][1] 		C3=[2][2]

  	end

#  def initialize
#    @cells = [{@id_case}] #à voir sur autre repo
#  end

#  def play_turn => où le mettre ds le
#  end

# def victory?
#    victory = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8],
#               [0, 4, 8], [2, 4, 6]]
#       victory.each do |win|
#         values = [cells[win[0]], cells[win[1]], cells[win[2]]]
#         return true if values.include?(self.mark.to_s) && #fonctionnement du self mark ?
#         ((values[0] == values[1]) && (values[1] == values[2]))
# end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

     if array_board_cases[0][0].value != " " && array_board_cases[0][0].value == array_board_cases[0][1].value && array_board_cases[0][1].value == array_board_cases[0][2].value # A1=A2 && A2=A3
      return true
     elsif array_board_cases[1][0].value != " " && array_board_cases[1][0].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[1][2].value # B1=B2 && B2=A3
      return true
     elsif array_board_cases[2][0].value != " " && array_board_cases[2][0].value == array_board_cases[2][1].value && array_board_cases[2][1].value == array_board_cases[2][2].value # C1=C2 && C2=A3
      return true

     elsif array_board_cases[0][0].value != " " && array_board_cases[0][0].value == array_board_cases[1][0].value && array_board_cases[1][0].value == array_board_cases[2][0].value # A1=B1 && B1=C1
      return true
     elsif array_board_cases[0][1].value != " " && array_board_cases[0][1].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[2][1].value # A2=B2 && B2=C2
      return true
     elsif array_board_cases[0][2].value != " " && array_board_cases[0][2].value == array_board_cases[1][2].value && array_board_cases[1][2].value == array_board_cases[2][2].value # A3=B3 && B3=C3
      return true

     elsif array_board_cases[0][0].value != " " && array_board_cases[0][0].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[2][2].value # A1=B2 && B2=C3
      return true
     elsif array_board_cases[0][2].value != " " && array_board_cases[0][2].value == array_board_cases[1][1].value && array_board_cases[1][1].value == array_board_cases[2][0].value # A3=B2 && B2=C1
      return true

  	 else return false

    end

end
