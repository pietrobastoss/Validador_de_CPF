programa {
  funcao inicio() {
    inteiro p1  , p2, p3  , p4    
    
    para(p1 = 0; p1 <= 0;""){
    escreva("informe os Primeiros 3 digitos do seu CPF: ")
    leia(p1)
    
    se(p1 <= 0){
      escreva("\nINVÁLIDO! > Digite um numero maior que zero.\n")
    }
    }
    
    para(p2 = 0; p2 <= 0;""){
    escreva("informe os proximos 3 digitos do seu CPF: ")
    leia(p2)
    
    se(p2 <= 0){
      escreva("\nINVÁLIDO! > Digite um numero maior que zero.\n")
    }
    }

    para(p3 = 0; p3 <= 0;""){
    escreva("informe os proximos 3 digitos do seu CPF: ")
    leia(p3)
    
    se(p3 <= 0){
      escreva("\nINVÁLIDO! > Digite um numero maior que zero.\n")
    }
    }

    para(p4 = 0; p4 <= 0;""){
    escreva("informe os ultimos 2 digitos do seu CPF: ")
    leia(p4)
    
    se(p4 <= 0){
      escreva("\nINVÁLIDO! > Digite um numero maior que zero.\n")
    }
    limpa()
    }
    
      escreva("CPF:\t", p1, ".", p2, ".", p3, "-", p4)
    
    
  }
}
