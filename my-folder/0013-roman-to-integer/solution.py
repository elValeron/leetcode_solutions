class Solution:
    

    def romanToInt(self, s: str) -> int:
        data = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
        }
        result = 0
        i = 0
        while i < len(s):
            if i < len(s)-1:
                if data[s[i+1]] > data[s[i]]:
                    result += data[s[i+1]] - data[s[i]]
                    i += 1
                else:
                    result += data[s[i]]
                i += 1
            else:
                result += data[s[i]]
                break
        return result
