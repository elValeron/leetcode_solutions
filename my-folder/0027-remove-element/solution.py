class Solution:
    def removeElement(self, nums: list[int], val: int) -> int:
        nums_len = len(nums)
        index = 0
        while index < nums_len:
            if nums[index] == val:
                nums.pop(index)
                nums_len -= 1
            else:
                index += 1
        return len(nums)
