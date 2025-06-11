# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def inorderTraversal(self, root: Optional[TreeNode]) -> list[int]:

        result = []
        def traverser(node):

            if node is None:
                return
            traverser(node.left)
            result.append(node.val)
            traverser(node.right)
        traverser(root)
        return result
        
