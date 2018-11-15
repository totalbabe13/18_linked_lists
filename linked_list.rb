#

class LinkedList
	attr_accessor :list 

	def initialize
     @list = []
    end 
end

class Node
	attr_accessor :next_node, :value
	
	def initialize
		@next_node = nil
		@value = nil 
	end
end	

#runner - - - - -





