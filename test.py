import fibo as ffibo
def pfibo(n):
    if n<2:
        return n
    else:
        return pfibo(n-1)+pfibo(n-2)

import time
N = 40
for func in [pfibo, ffibo.fibonacci]:
    t0 = time.time()
    print('#'*30)
    #print(func.__name__)
    for i in range(N):
        print(func(i),end=' ',flush=True)    
    print('\nElapsed time:{:.3f}s'.format(time.time()-t0))
