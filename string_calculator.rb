# class decalartion for the String calculator
class StringCalculator
    # Adds numbers present in a string and returns the sum
    def add(numbers)
        # returns 0 if the input string is empty or no input passed
        return 0 if numbers.nil? || numbers == ""
        # return the number itself if only a single number
        return numbers.to_i unless numbers.include?(",")

        # split the string by comma and sum the numbers
        # @input is a string e.g. "1,2,3"
        # split will split the strings based on , delimitator and then map will return an array of integers
        # sum will return the sum of array elements
        numbers.split(",").map(&:to_i).sum
    end
end
