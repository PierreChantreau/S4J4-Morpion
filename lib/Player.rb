class Player
  attr_accessor :name, :mark

#  def initialize
#    @name = name
#    @mark = "X" or "Y"
#  end


    @@signs_array = ["x", "o"] #but du array ? pq pas méthode classique des premières leçons vues au début de la semaine? 

    	def initialize(name)

    		@name = name.to_s
    		random = @@signs_array.sample
    		@mark = random
    		@@signs_array.delete(random)
    		puts "JOUEUR CRÉÉ !"

    	end

  end
