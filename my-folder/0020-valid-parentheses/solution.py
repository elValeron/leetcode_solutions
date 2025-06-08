class Solution:
    def isValid(self, s: str) -> bool:
        data = {
            ')': '(',
            ']': '[',
            '}': '{'
        }
        stack = []
        for bracer in s:
            if bracer in '([{':
                stack.append(bracer)
            if bracer in '}])':
                if not stack:
                    return False
                if data[bracer] == stack[-1]:
                    stack.pop()
                else:
                    return False
        if stack:
            return False
        return True
