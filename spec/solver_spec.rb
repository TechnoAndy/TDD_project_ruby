require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe 'Factorial' do
    it 'Return 1 for factorial of 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'Return factorial' do
      expect(@solver.factorial(2)).to eq(2)
    end

    it 'Return an error if a negative number is used' do
      expect { @solver.factorial(-1) }.to(raise_error(StandardError))
    end
  end

  describe 'Reverse word' do
    it 'returns the reverse of a word' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'should return fizzbuzz when number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'if number is divisible by 3 return fizz' do
      expect(@solver.fizzbuzz(12)).to eq('fizz')
    end

    it 'if number is divisible by 5 return buzz' do
      expect(@solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'if number is not divisible by 3 or 5 return number as a string' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
