print('YOU MAKE STRAY KIDS STAY')     # título do código


# exercício 1 - soma, subtração, multiplicação e divisão de dois números
'''print('Digite dois números:')
N1 = float(input())
N2 = float(input())

soma = N1 + N2
print('A soma desses números é:', soma)

subtracao = N1 - N2
print('A subtração desses números é:', subtracao)

multiplicacao = N1 * N2
print('A multiplicação desses números é:', multiplicacao)

divisao = N1 / N2
print('A divisão desses números é:', divisao)

modulo = (N1 % N2)
print('O resto dessa divisão é:', modulo)'''


# exercício 2 - se / verdadeiro ou falso
'''print('Qual a sua idade?')
idade = int(input())

if idade >= 18:
    print('ACESSO LIBERADO!')

else:
    print('ACESSO NEGADO!')'''


# exercício 3 - se / mais opções
'''print('Qual sua idade?')
idade = int(input())

if idade < 18:
    print('Acesso negado!')
    print('Você é menor de idade.')

elif idade == 18:
    print('Quase lá!')
    print('Mais um ano e você terá acesso.')

else:
    print('Acesso liberado!')
    print('Bem vindo.')'''


# exercício 4 - se / aprovado ou reprovado
'''print('Digite sua nota do primeiro bimestre:')
B1 = float(input())

print('Digite sua nota do segundo bimestre:')
B2 = float(input())

print('Digite sua nota do terceiro bimestre:')
B3 = float(input())

print('Digite sua nota do quarto bimestre:')
B4 = float(input())

media = (B1 + B2 + B3 + B4) / 4

print('Sua média é:', media)

if media >= 7:
    print('Aprovado!')

elif media >= 5:
    print('Recuperação.')

else:
    print('Reprovado.')'''


# exercício 5 - posso participar do mulheres tech?
print('Qual seu gênero?')
print('F ou M')
genero = input().upper()

print('Qual município você mora?')
municipio = input().upper()

if genero == 'F' and municipio == 'RIO DE JANEIRO':
    print('Parabéns! Você pode participar do Mulheres.Tech :)')

else:
    print('Infelizmente você não pode participar do Mulheres.Tech :(')