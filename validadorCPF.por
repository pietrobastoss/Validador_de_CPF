programa {
  funcao inicio() {
    inteiro p1, p2, p3, p4
    
   
    escreva("Digite os três primeiros digitos do CPF: ")
    leia(p1)
    limpa()

    escreva("Digite os outros três: ")
    leia(p2)
    limpa()

    escreva("Digite os outros três: ")
    leia(p3)
    limpa()

    escreva("Digite os dois últimos: ")
    leia(p4)
    limpa()

    se (p1 < 0 ou p2 < 0 ou p3 < 0 ou p4 < 0){
      escreva("INVÁLIDO")
      
    }senao {
    
    escreva("CPF: ", p1, ".", p2, ".", p3, "-", p4)
    }
  }
}
