# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        left = 0 
        right = 0
        if root:
            left += self.maxDepth(root.left) + 1
            right += self.maxDepth(root.right) + 1

        return max(left, right)
