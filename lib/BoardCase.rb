class BoardCase
  attr_accessor :value
  #pq pas de id_case ds le attr_accessor comme dit ds l'énoncé?

#  def initialize
#    @valeur = "X" || "0" || " "
#    @id_case = {} #voir autre repo , à corriger
#  end

def initialize

		@value = " "

	end



	def case_x

		@value = "x"

	end



	def case_o

		@value = "o"

	end



end
