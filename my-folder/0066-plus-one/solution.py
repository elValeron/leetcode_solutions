class Solution:
    def plusOne(self, digits: list[int]) -> list[int]:
        index = len(digits)-1
        while index > -1:
            if digits[index] == 9:
                digits[index] = 0
                if index == 0:
                    digits.append(0)
                    digits[index] = 1
                    return digits
                index -= 1
                
            if digits[index] < 9:
                digits[index] += 1
                return digits
