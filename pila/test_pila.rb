load 'pila.rb'
require 'test/unit'

class TestPila < Test::Unit::TestCase

	def testNewStackIsEmpty
		assert Pila.new.isEmpty
	end

	def testStackWithSomethingIsNotEmpty
		assert !::Pila.new.push(1).isEmpty
	end

	def testPopOfEmptyStackRaisesException
			# Habria que ver para testear el mensaje, por ahora lo dejo asi
		assert_raise RuntimeError do
			::Pila.new.pop			
		end
	end

	def testPushPopOnStackReturnsPushedElement
		assert_equal 1, ::Pila.new.push(1).pop
	end

	def testPopDropsTheTopOfTheStack
		aPila = ::Pila.new
		aPila.push(1).push(2)
		aPila.pop
		assert_equal 1, aPila.pop
	end

	def testStackIsEmptyAfterPopAllElements
		aPila = ::Pila.new
		aPila.push(1).pop
		assert aPila.isEmpty
	end
end