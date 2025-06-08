class Solution:
    def searchInsert(self, nums: list[int], target: int) -> int:
        if target <= nums[0]:
            return 0
        if target >= nums[-1]:
            if target == nums[-1]:
                return len(nums)-1
            return len(nums)
        if len(nums) == 1:
            if nums[0] >= target:
                return 0
            else:
                return 1
        index = 0
        while index < len(nums)-1:
            
            if nums[index] == target:
                return index
            if nums[index] < target < nums[index+1]:
                return index + 1
            index += 1
            
