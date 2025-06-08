class Solution:
    def removeDuplicates(self, nums: list[int]) -> int:
        current = nums[0]
        index = 1
        nums_len = len(nums)
        while index < nums_len:
            if nums[index] != current:
                current = nums[index]
                index += 1
            else:
                nums.pop(index)
                nums_len -= 1
        return len(nums)
