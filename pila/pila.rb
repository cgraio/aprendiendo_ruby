load 'pila_element.rb'
load 'pila_null.rb'

class Pila
	def initialize
		@head = Pila_Null.new
	end

	def isEmpty
		@head.instance_of? Pila_Null
	end

	def push(element)
		@head = Pila_Element.new(element, @head)
		self
	end

	def pop
		top = @head.content
		@head = @head.next
		top
	end
end