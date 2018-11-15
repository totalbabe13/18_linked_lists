#

# ['barbra','Lilly','Adam','Cheryl','Karl']

class LinkedList
  attr_accessor :list

	def initialize
		@list = []
	end

	def append(value)
		new_node = Node.new(value, nil)
		if list.length == 0
			list << new_node
		else 
			list << new_node
		    list[list.length-2].next_node = new_node.value	
		end
	end

    def prepend(value)
        new_node = Node.new(value,nil)
    	if list.empty?
    	  list.unshift(new_node)
    	else 
    	  new_node.next_node = list[0].value
    	  list.unshift(new_node)
    	end	
    end

    def size
    	list.length
    end

    def head
    	list[0]
    end	

    def tail
    	list[list.length-1]
    end

    def at(index)
    	index -= 1
      if list[index] == nil
        'there is no index number #{index}'
      else 
        list[index]
      end    
    end	

    def pop
    	if list.length == 2
    		puts 'this list is empty'
    	else
    	  list.pop
    	  list[(list.length) -1].next_node = nil
    	end 	
    end	
end

class Node
  attr_accessor :next_node, :value
	
	def initialize(value = nil, next_node = nil)
		@value = value
		@next_node = next_node
	end
end	



# [ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil
#runner - - - - -
test_link = LinkedList.new

test_link.append('abcdefg')
test_link.append('parabola')
test_link.append('this is the END!!!')
test_link.prepend('IN THE BEGINNING there was coffee')
test_link.list.size
test_link.head
test_link.tail
test_link.at(3)
test_link.pop
p test_link.list





