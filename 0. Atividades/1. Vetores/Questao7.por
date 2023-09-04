programa {

  inclua biblioteca Util --> u

  funcao inicio(){ 
    inteiro numeros [5]
    inteiro soma = 0

    para(inteiro i = 0; i <= 4; i++){
      escreva("Digite o ", i+1," º numero: ")
      leia(numeros[i])
    
    }
    para(inteiro j = 0; j < u.numero_elementos(numeros); j++){
      soma += numeros[j]
    }
    escreva("O resultado é: ", soma")
    
  }
}