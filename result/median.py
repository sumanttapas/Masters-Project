import numpy
from sys import argv

fptr = open(argv[1])
fdata = fptr.read();
mylist = []
for line in fdata.splitlines():
	#print(line)
	test = line.split("=")
	#print(test)
	mylist.append(float(test[1]))
print("median:"+str(numpy.median(numpy.array(mylist))))

