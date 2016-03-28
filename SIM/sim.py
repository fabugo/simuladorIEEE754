import sys
from random import *

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
	M = binFracToFloat(bValue[6:])
	BE = 1 if E > 0 else 0
	return (-1)**S*((2)**(E-15))*(BE+M)

#Soma 2 binarios(str) no padrao IEEE745 resultando em um float
def sum(A,B):
	Af = BinTofloat(A)
	Bf = BinTofloat(B)
	print str(Af) + ' + ' + str(Bf)
	return Af + Bf

#Transforma valor um valor em float para um cadeia de bit no padrao IEEE745(str)
def gg(R):
	print R
	M = ""
	S = 0
	twoE = 0
	count = 0
	new_R = 0.0
	new_R = R

	if R == 0:
		twoE = -15
	if R < 0:
		S = 1
		new_R = new_R * -1

	while (new_R>=2):
		new_R = new_R/2
		twoE = twoE + 1

	while (count < 11):
		if(new_R >= 1):
			new_R = new_R - 1
		new_R = new_R * 2

		if new_R >= 1:
			M = M + "1"
		else:
			M = M + "0"
		count = count + 1

	if twoE == 0:
		r = str(S) + '0' + bin(twoE + 15)[2:] + M
	else:
		r = str(S) + bin(twoE + 15)[2:] + M 
	return r
#--------------------------------------------------------
r = gg(sum(sys.argv[1],sys.argv[2]))
print r
print BinTofloat(r)

A = ""
B = ""
c = 0
while(c<16):
	A = A + str(randint(0, 1))
	c = c + 1
c = 0
while(c<16):
	B = B + str(randint(0, 1))
	c = c + 1

r = gg(sum(A,B))
print r
print BinTofloat(r)
