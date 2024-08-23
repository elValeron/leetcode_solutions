class Solution:
    def firstMissingPositive(self, nums: List[int]) -> int:
        lst = sorted(nums)
        result = 1
        for i in lst:
            if result == i:
                result += 1
            elif result < i:
                return result
        return result
