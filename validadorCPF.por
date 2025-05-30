def inicio():
    cpf_entrada = input("Digite o CPF (formato XXX.XXX.XXX-YY ou XXXXXXXXXYY): ")
    cpf_somente_numeros = ""
    numeros_cpf = ""
    digitos_verificadores = ""

    tamanho = len(cpf_entrada)

    if not ((tamanho == 14 and cpf_entrada[3] == "." and cpf_entrada[7] == "." and cpf_entrada[11] == "-") or (tamanho == 11)):
        print("Formato inválido. Encerrando o programa.\n")
        return

    for i in range(tamanho):
        c = cpf_entrada[i]
        if "0" <= c <= "9":
            cpf_somente_numeros += c

    if len(cpf_somente_numeros) != 11:
        print("CPF inválido. Deve conter 11 dígitos numéricos.\n")
        return

    for i in range(9):
        numeros_cpf += cpf_somente_numeros[i]

    digitos_verificadores = cpf_somente_numeros[9] + cpf_somente_numeros[10]

    soma = 0
    peso = 10
    for i in range(9):
        soma += int(numeros_cpf[i]) * peso
        peso -= 1

    resto = soma % 11
    if resto < 2:
        pdv1 = 0
    else:
        pdv1 = 11 - resto

    print("\nCPF digitado:", cpf_somente_numeros)
    print("Primeiro Dígito Verificador calculado:", pdv1)
    print("Primeiro Dígito Verificador digitado:", digitos_verificadores[0])

    if pdv1 == int(digitos_verificadores[0]):
        print("Resultado: O PDV está CORRETO.\n")
    else:
        print("Resultado: O PDV está INCORRETO.\n")

    numeros_para_sdv = [int(numeros_cpf[i]) for i in range(9)]
    numeros_para_sdv.append(pdv1)

    soma = 0
    peso = 11
    for i in range(10):
        soma += numeros_para_sdv[i] * peso
        peso -= 1

    resto = soma % 11
    if resto < 2:
        pdv2 = 0
    else:
        pdv2 = 11 - resto

    print("Segundo Dígito Verificador calculado:", pdv2)
    print("Segundo Dígito Verificador digitado:", digitos_verificadores[1])

    if pdv2 == int(digitos_verificadores[1]):
        print("Resultado: O SDV está CORRETO.\n")
    else:
        print("Resultado: O SDV está INCORRETO.\n")

    if pdv1 == int(digitos_verificadores[0]) and pdv2 == int(digitos_verificadores[1]):
        print("CPF VÁLIDO.\n")
    else:
        print("CPF INVÁLIDO.\n")



inicio()
