# Build the following methods in your linked list class:

#append adds a new node to the end of the list

#prepend adds a new node to the start of the list

#size returns the total number of nodes in the list

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

	def head
	  data_set[0]
	end

	def tail
	  data_set[data_set.length-1]
	end
# --> WORKING FROM HERE - - - - - - - - - - - - - - - - - - -
	def at(index)
	  data_set[index]
	end

	def pop
	  data_set.pop
	end

	def contains?(node)
	  data_set.include?(node)
	end

	def find(data)
	  data_set.index(data)
	end
	
	def to_s
	  # data_set.each {|node| puts node.to_s}
	  #The format should be: ( data ) -> ( data ) -> ( data ) -> nil
	  puts " ( #{data_set.join(" ) -> ()} ) "
	end	

end

class Node

end	

#runner - - - - -

test_list = LinkedList.new
test_list.append('AA')
test_list.append('XX')
test_list.append('remove me')
test_list.prepend('BB')

# puts ' - - - -'
# p test_list.size
# puts ' - - - -'
# p test_list.head
# puts ' - - - -'
# p test_list.tail
# p test_list.data_set
# puts ' - - - -'
# p test_list.at(1)
# puts ' - - - -'
# test_list.pop
# p test_list.contains?('XX')
# p test_list.find('BB')
# p test_list.data_set
  test_list.to_s



