#

# ['barbra','Lilly','Adam','Cheryl','Karl']

class LinkedList
	
end

class Node
	attr_accessor :next_node, :value
	
	def initialize(value = nil, next_node = nil)
		@value = value
		@next_node = next_node
	end
end	

#runner - - - - -

testing_linked_list = LinkedList.new





