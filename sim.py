import sys


#Tranforma o valor da mantissa em um valor decimal com ponto flutuante ( float )
def binFracToFloat(M):
	R = 0.0
	dvdnd = 2.0
	for i in range(len(M)):
		R = R + int(M[i],2)/dvdnd
		dvdnd = dvdnd * 2
	return R
#Tranforma os valores em decimal e aplica a funcao que resulta no valor final
def BinTofloat(bValue):
	S = int(bValue[0],2)
	E = int(bValue[1:6],2)
	M = binFracToFloat(bValue[5:])
	BE = 1 if E > 0 else 0
	return (-1)**S*((2)**(E-15))*(BE+M)

#Soma 2 binarios(str) no padrao IEEE745 resultando em um float
def sum(A,B):


	Ar = BinTofloat(A)
	Br = BinTofloat(B)


	return Ar + Br
#Transforma valor um valor em float para um cadeia de bit no padrao IEEE745(str)
def gg(R):
	S = 0
	twoE = 0
	if R == 0:
		twoE = -15
	if R < 0:
		S = 1
		R = R * -1
	print R
	M = ""
	count = 0
	new_R = 0.0

	new_R = R
	while (new_R>=2):
		new_R = new_R/2
		twoE = twoE + 1

	while (count < 11):
		print M
		if(new_R >= 1):
			new_R = new_R - 1
		new_R = new_R * 2

		if new_R >= 1:
			M = M + "1"
		else:
			M = M + "0"
		count = count + 1


	print bin(16)[2:]
	print twoE
	if twoE == 0:
		return str(S) + '0' + bin(twoE + 15)[2:] + M
	else:
		return str(S) + bin(twoE + 15)[2:] + M
print gg(sum(sys.argv[1],sys.argv[2]))
