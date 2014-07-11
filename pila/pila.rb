class Pila
	def initialize
		@empty = true
	end

	def isEmpty
		@empty
	end

	def push(element)
		@empty = false
		@top = element
		self
	end

	def pop
		if @empty
			raise RuntimeError.new('Cannot do pop of empty stack')
		end
		@top
	end
end