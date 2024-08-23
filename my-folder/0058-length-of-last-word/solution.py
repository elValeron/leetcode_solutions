class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        string = s.strip().split()
        return len(string[-1])
