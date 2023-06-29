require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'testing the factorial method' do
    it 'returns 1 when given 0' do
      expect(@solver.factorial(0)).to eql 1
    end

    it 'returns error when given negative number' do
      expect(@solver.factorial(-3)).to eql 'Error! Please Enter value greater or equal to zero'
    end

    it 'returns 120 when given 5' do
      expect(@solver.factorial(5)).to eql 120
    end
  end

  context 'testing the reverse method' do
    it 'returns "olleh" when given "hello"' do
      expect(@solver.reverse('hello')).to eql 'olleh'
    end
  end

  context 'testing the fizzbuzz method' do
    it 'returns "fizz" when divisible by 3' do
      expect(@solver.fizzbuzz(6)).to eql 'fizz'
    end

    it 'returns "buzz" when divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end

    it 'returns "fizzbuzz" when divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end
  end
end

# solver = Solver.new
# puts solver.factorial(4)
# puts solver.reverse('world')
# puts solver.fizzbuzz(7)
