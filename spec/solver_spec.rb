require_relative '../solver'
# Solver class tests
describe Solver do
    context 'when solver object is instantiated' do
        it 'creates a Solver object' do
            solver = Solver.new
            expect(solver).to be_kind_of(Solver)
        end
    end

    context 'factorial method' do
        # Checkes whether a solver class responds to the factorial message (has a factorial method)
        it 'factorial method should exist/respond' do
            solver = Solver.new
            expect(solver).to respond_to(:factorial)
        end

        it 'it should return factorieal of N if N is positive ' do
            solver = Solver.new
            expect(solver.factorial(4)).to eq 24
        end

        it 'it should raise error if -ve number is given' do
            solver = Solver.new
            expect do
              solver.factorial(-1)
            end.to raise_error('NegativeNumberFactorialError')
          end
    end
    # reverse method tests
    context 'When reverse method is called' do
        solver = Solver.new
    it 'should return the reversed string' do
      expect(solver.reverse('hello')).to match('olleh')
    end
    it 'should return the empty string when empty string is given' do
      expect(solver.reverse('')).to match('')
    end
    it 'should raise an error when given another datatype other than a string' do
      expect do
        expect(solver.reverse(5))
      end.to raise_error('Not A String Error')
    end
  end
end
