# Build the following methods in your linked list class:

#append adds a new node to the end of the list

#prepend adds a new node to the start of the list

#size returns the total number of nodes in the list
# --> WORKING FROM HERE - - - - - - - - - - - - - - - - - - -
#head returns the first node in the list

#tail returns the last node in the list

#at(index) returns the node at the given index

#pop removes the last element from the list

#contains? returns true if the passed in value is in the list and otherwise returns false.

#find(data) returns the index of the node containing data, or nil if not found.

#to_s represent your LinkedList objects as strings, so you can print them out and 
#preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil

class LinkedList
  attr_accessor :data_set 

	def initialize
		@data_set = []
	end
	
	def append(new_node)
      data_set.push(new_node)
	end	

	def prepend(new_node)
	  data_set.unshift(new_node)	
	end	

	def size
	  data_set.length	
	end

end

class Node

end	

#runner - - - - -

test_list = LinkedList.new
test_list.append('AA')
test_list.prepend('BB')
puts test_list.size


