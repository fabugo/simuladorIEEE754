#Tranforma o valor da mantissa em um valor decimal com ponto flutuante ( float )
def binFracToFloat(M):
	R = 0.0
	dvdnd = 2
	for i in range(len(M)):
		R = R + int(M[i])/dvdnd
		dvdnd = dvdnd * 2
	return R
#Tranforma os valores em decimal e aplica a funcao que resulta no valor final
def binTofloat(bValue):
	S = int(bValue[0],2)
	E = int(bValue[1:6],2)
	M = binFracToFloat(bValue[5:])
	BE = 1 if E > 0 else 0
	return (-1)**S*((2)**(E-15))*(BE+M)
#Soma 2 binarios(str) no padrao IEEE745 resultando em um float
def sum(A,B):
	return binTofloat(A) + binTofloat(B)
#Transforma valor um valor em float para um cadeia de bit no padrao IEEE745(str)
def gg(R):
	S = "0"
	E = "00000"
	M = "0000000000"
	count = 0
	new_R = 0.0
	twoE = 0
	while (R>=2):
		new_R = R/2
		twoE = twoE + 1
	while (new_R > 0)
		new_R = new_R - 1
		new_R = new_R * 2
		M[count] = 1 if new_R > 1 else 0
		count = count + 1
