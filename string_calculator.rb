# class decalartion for the String calculator
class StringCalculator
    # Adds numbers present in a string and returns the sum
    def add(numbers)
        # returns 0 if the input string is empty or no input passed
        return 0 if numbers.nil? || numbers == ""
        # return the number itself if only a single number
        return numbers.to_i
    end
end
