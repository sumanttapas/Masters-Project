from sys import argv

fptr= open(argv[1])
data = fptr.read()
i = [ 1 ,800, 8000, 80000, 800000]
k = 0
for line in data.splitlines():
	#print(k,line)
	lst = line.split(":")
	if(len(lst) == 1):
		frstl = lst[0]
	if(len(lst) == 2):
		if frstl == "lock":
			print("lock for len"+frstl+":"+str(float(lst[1])/float(i[int(k/4)])))
		elif(frstl == "lockfree"):
			print("lock for len"+frstl+":"+str(float(lst[1])/float(i[int(k/4)])))
	k = k + 1
			
	
