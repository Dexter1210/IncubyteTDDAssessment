require_relative '../lib/string_calculator'

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

    it 'returns the sum of two numbers seperated by comma' do
        expect(calc.add("1,2")).to eq(3)
    end

    it 'returns the sum of multiple numbers seperated by comma' do
        expect(calc.add("1,2,3,4")).to eq(10)
    end

    it 'returns the sum of numbers seperated by newline' do
        expect(calc.add("1\n2,3")).to eq(6)
    end

    it 'returns the sum of numbers seperated by single custom delimiter' do
        expect(calc.add("//;\n1;2")).to eq(3)
    end

    it 'raises an error if there are negatives numbers in the input' do
        expect{ calc.add("1, -2, -3, 4") }.to raise_error("Negatives not allowed: -2, -3")
    end

    it 'ignores numbers greater than 1000' do
        expect(calc.add("1,2,1234")).to eq(3)
    end

    it 'returns the sum of numbers when seperated by a multi character delimiter' do
        expect(calc.add("//[***]\n1***2***3")).to eq(6)
    end

    it 'returns the sum of numbers when seperated by a multiple single character delimiters' do
        expect(calc.add("//[:][?]\n1:2?3")).to eq(6)
    end

    it 'returns the sum of numbers when seperated by multiple multi character delimiters' do
        expect(calc.add("//[:::][??]\n1:::2??3")).to eq(6)
    end
end
