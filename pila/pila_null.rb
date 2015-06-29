class Pila_Null
	def content
		raise RuntimeError.new('Cannot do pop of empty stack')
	end
	
	def next
		raise RuntimeError.new('Cannot do next of empty stack')
	end
end