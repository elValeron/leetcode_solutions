class Solution:
    def mySqrt(self, x: int) -> int:
        if x == 0:
            return x
        result = x/2
        while True:
            if int(x/result) == int(result):
                return int(result)
            if x < result*result < x+1:
                return int(result)
            result = (result + x/result) / 2
