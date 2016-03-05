def gg(R):
	S = "0"
	E = "00000"
	M = "0000000000"
	count = 0
	new_R = 0.0
	twoE = 0
	new_R = R
	while (new_R>=2):
		new_R = R/2
		twoE = twoE + 1
	while (new_R > 0):
		new_R = new_R - 1
		new_R = new_R * 2
		M[count] = "1" if new_R > 1 else 0
		count = count + 1
gg(float(input()))
