print('FELIX YONGBOK LEE') # título do código


# exercício 1
print('Qual sua idade?')
idade = int(input())

if idade >= 18:
    print('Seja bem-vindo. Bom filme!')

elif idade >= 16:
    print('Você está acompanhado do seu responsável?\nResponda: sim ou não.')
    resposta = input().lower()
    if resposta == 'sim':
        print('Bem vindo, boa sessão!')
    elif resposta == 'nao':
        print('Infelizmente você não pode entrar.')

else:
    print('Infelizmente você não possui a idade mínima.')