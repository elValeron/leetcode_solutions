class Solution:
    def longestCommonPrefix(self, strs: list[str]) -> str:
        minimal_len = min(strs, key=len)
        result = ''
        for i in range(len(minimal_len)):
            current = result + minimal_len[i]
            for word in strs:
                if word[:i+1] != current:
                    break
            else:
                result = current
        return result
