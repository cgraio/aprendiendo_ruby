require_relative 'pila'
require 'test/unit'

class TestPila < Test::Unit::TestCase

	def testNewStackIsEmpty
		assert Pila.new.isEmpty
	end

	def testStackWithSomethingIsNotEmpty
		assert !Pila.new.push(1).isEmpty
	end

	def testPopOfEmptyStackRaisesException
			# Habria que ver para testear el mensaje, por ahora lo dejo asi
		assert_raise RuntimeError do
			Pila.new.pop			
		end
	end

	def testPushPopOnStackReturnsPushedElement
		assert_equal 1, Pila.new.push(1).pop
	end
end