class Pila_Element
	def initialize(content, _next)
		@content = content
		@next = _next
	end

	def next
		@next
	end

	def content
		@content
	end
end