import re
def valid_log(in1,in2,out_log):
	filename1=in1
	filename2=out_log
	filename3=in2 
	file1= open(filename3,'r')
	outfile = open(filename2, 'w+')
	for line1 in file1:
		temp = 0
		file= open(filename1,'r')	
		for line in file:		
			x1 = re.split("\s", line1)
			x = re.split("\s", line)
			if x[0] == x1[0]:
				outfile.write(line)
			#print (x[0])
			#print (x1[0])
				temp = 1
		if temp == 0:	
			outfile.write(line1)
	outfile.close() #Close file
