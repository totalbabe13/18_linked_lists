#

# ['barbra','Lilly','Adam','Cheryl','Karl']

class LinkedList
    attr_accessor :list, 


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


end

class Node
	attr_accessor :next_node, :value
	
	def initialize(value = nil, next_node = nil)
		@value = value
		@next_node = next_node
	end
end	

#runner - - - - -
p 'lilililil'
test_link = LinkedList.new

test_link.append('abcdefg')
# test_link.append('parabola')
# test_link.append('this is the END!!!')

# test_link.prepend('IN THE BEGINNING there was coffee')
# p test_link.list.size
#test_link
# [ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil


#<LinkedList:
  # @head= <Node@value="head", @next_node=nil>, 
   #@tail=#<Node:@value="xxx", @next_node=nil>>