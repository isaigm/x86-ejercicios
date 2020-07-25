import time
import os
import sys
if __name__ == '__main__':
    if len(sys.argv) > 1:
        program = './' + sys.argv[1]
        start_time = time.time()
        os.system(program)
        end_time = time.time()
        print("{0:5f} ms".format((end_time - start_time) * 1000))
    else:
        print("Uso binario ejecutable")
