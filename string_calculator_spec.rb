require_relative 'string_calculator'

describe StringCalculator do
    let(:calc) { StringCalculator.new }

    it 'returns 0 for empty string' do
        expect(calc.add("")).to eq(0)
    end

    it 'returns 0 for nil input' do 
        expect(calc.add(nil)).to eq(0)
    end

    it 'returns the number itself for a single number input' do
        expect(calc.add("5")).to eq(5)
    end
end
