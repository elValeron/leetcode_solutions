class Solution:
    def addBinary(self, a: str, b: str) -> str:
        min_len = b if len(b) < len(a) else a
        max_len = a if len(a) > len(b) else b
        new_min = '0' * (len(max_len) - len(min_len)) + min_len
        s = ''
        result = ''
        index = len(max_len) - 1
        while index > -1:
            if max_len[index] == '1' and new_min[index] == '1':

                
                if s == '1':
                    result = s + result
                else:
                    result = '0' + result
                s = '1'
            elif max_len[index] == '1' and new_min[index] == '0':
                if s == '1':
                    result = '0' + result
                else:
                    result = '1' + result
            elif max_len[index] == '0' and new_min[index] == '1':
                if s == '1':
                    result = '0' + result
                else:
                    result = '1' + result
            else:
                if s == '1':
                    result = '1' + result
                    s = ''
                else:
                    result = '0' + result
            index -= 1
        else:
            if s == '1':
                result = s + result
            
        return result 
