class Pila
	def initialize
		@empty = true
		@content = Array.new
	end

	def isEmpty
		@empty
	end

	def push(element)
		@empty = false
		@content.push(element)
		self
	end

	def pop
		if @empty
			raise RuntimeError.new('Cannot do pop of empty stack')
		end
		top = @content.last
		@content.delete_at(@content.size - 1)
		if @content.size == 0
			@empty = true
		end
		top
	end
end