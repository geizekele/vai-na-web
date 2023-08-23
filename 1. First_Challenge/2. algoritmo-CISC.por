programa {

inteiro continua
real dinheiro = 10, valor //A CONTA SERÁ INICIADA COM VALOR PRÉ-EXISTENTE DE R$10

  funcao menu(){  
    inteiro opcao

      escreva("\n| Escolha uma das opções abaixo: |")
      escreva("\n| 1 - DEPOSITO                   |")
      escreva("\n| 2 - SAQUE                      |")
      escreva("\n| 3 - CONSULTA                   |")
      escreva("\n| 0 - SAIR                       |")
      escreva("\n==================================")
      escreva("\nOPÇÃO ESCOLHIDA: ")
      leia(opcao)
      conta(opcao)
  }

  funcao conta(inteiro opcao){ //FUNCAO QUE FARA A CHAMADA DA OPCAO SELECIONADA
    se(opcao == 1){
      escreva("Informe quanto deseja depositar: R$ ")
        leia(valor)
      escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "DEPOSITO"))
        dinheiro += valor //ATUALIZA O VALOR DISPONIVEL NA CONTA ENQUANTO NAO SAIR DA OPERACAO
        retorne continuar()
    }
    se(opcao == 2){
      escreva("Informe quanto deseja sacar: R$ ")
        leia(valor)
      escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "SAQUE"))
        dinheiro -= valor //ATUALIZA O VALOR DISPONIVEL NA CONTA ENQUANTO NAO SAIR DA OPERACAO
        retorne continuar()
    }
    se(opcao == 3){
      escreva("Valor atual: R$", dinheiro)
        retorne continuar()
    }
    se(opcao == 0){
      retorne finalizar()
    }
    senao{
    escreva("OPÇÃO INVÁLIDA! TENTE NOVAMENTE.") 
      retorne menu() //CASO ESTEJA FORA DAS OPÇOES, RETORNAR O MENU
    }
  }

  funcao depositoSaque(real a, real b, cadeia tipo){ //CORRESPONDE AOS PARAMETROS DINHEIRO, VALOR E TIPO DE OPERACAO
    se(tipo == "DEPOSITO"){
      retorne a + b
    }
    se(tipo == "SAQUE"){
      se(a >= b){ //SE O VALOR EM CONTA (dinheiro) FOR MAIOR QUE O VALOR DE SAQUE (valor)
        retorne a - b
      }
      senao{
        escreva("Valor INSUFICIENTE para saque!")
        continuar()
      }     
    }
  }

  funcao continuar(){
    escreva("\nDeseja continuar/tentar novamente? 1- SIM ou 2- NAO: ")
    leia(continua)

    se(continua == 1){ //DESEJA CONTINUAR A OPERACAO
      retorne menu()
    }
    se(continua == 2){ //NAO DESEJA CONTINUAR A OPERACAO
      retorne finalizar()
    }
    senao{ //CASO SEJA INSERIDO ALGO DIFERENTE DE 1 OU 2
      escreva("OPÇÃO INVÁLIDA! TENTE NOVAMENTE.")
      continuar()
    }
  }

  funcao finalizar(){
    escreva("ATÉ MAIS! VOLTE SEMPRE!")
  }
  
  funcao inicio() {
    escreva("== BEM VINDO AO BANCO VAI NA WEB ==")
    menu() 
  }
}
