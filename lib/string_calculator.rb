# class decalartion for the String calculator
class StringCalculator
    # array mentioning default delimiters
    DEFAULT_DELIMITERS = [",", "\n"]
    # Adds numbers present in a string and returns the sum
    def add(numbers)
        # returns 0 if the input string is empty or no input passed
        return 0 if numbers.nil? || numbers == ""

        # split the string by comma or new line and sum the numbers
        # @input is a string e.g. "1,2,3"
        # split will split the strings based on delimitator and then map will return an array of integers
        # sum will return the sum of array elements

        delimiters = DEFAULT_DELIMITERS.dup
        # as the rule mentions to change a delimiter begining will contain a seperate line
        if numbers.start_with?("//")
            header, numbers = numbers.split("\n", 2)
            # check if their are multiple delimiters or multiple character delimiter or combination of both
            if header.include?("[")
                delimiters += header.scan(/\[(.*?)\]/).flatten
            else
                delimiters << header[2]
            end
        end
        # convert the array of delimiters into regex
        regex = Regexp.union(delimiters)
        # ignore the numbers greater than 1000
        nums = numbers.split(regex).map(&:to_i).select { |n| n <= 1000 }

        negatives = nums.select { |n| n < 0 }
        # raise error if there are negative numbers 
        raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

        nums.sum
    end
end
