programa {

inteiro opcao, continua
real dinheiro = 0, valor

  funcao menu(){    
      escreva("\n| Escolha uma das opções abaixo: |")
      escreva("\n| 1 - DEPOSITO                   |")
      escreva("\n| 2 - SAQUE                      |")
      escreva("\n| 3 - CONSULTA                   |")
      escreva("\n| 0 - SAIR                       |")
      escreva("\n==================================")
      escreva("\nOPÇÃO ESCOLHIDA: ")
      leia(opcao)
      conta()
  }

  funcao conta(){ //FUNCAO QUE FARA A CHAMADA DA OPCAO SELECIONADA
    se(opcao == 1){
      escreva("Informe quanto deseja depositar: R$ ")
        leia(valor)
      escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "DEPOSITO"))
        dinheiro += valor //ATUALIZA O VALOR DISPONIVEL NA CONTA ENQUANTO NAO SAIR DA OPERACAO
        continuar()
    }
    se(opcao == 2){
      escreva("Informe quanto deseja sacar: R$")
        leia(valor)

      escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "SAQUE"))
        dinheiro -= valor
        continuar()
    }
    se(opcao == 3){
      escreva("Valor atual: R$", dinheiro)
        continuar()
    }
    se(opcao == 0){
      finalizar()
    }
    senao{
    escreva("OPÇÃO INVÁLIDA! TENTE NOVAMENTE.") 
      menu() //CASO ESTEJA FORA DAS OPÇOES, RETORNAR O MENU
    }
  }

  funcao depositoSaque(real a, real b, cadeia tipo){
    se(tipo == "DEPOSITO"){
      retorne a + b
    }
    se(tipo == "SAQUE"){
      se(dinheiro > valor){ //SE O VALOR EM CONTA FOR MAIOR QUE O VALOR DE SAQUE
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
      menu()
    }
    se(continua == 2){ //NAO DESEJA CONTINUAR A OPERACAO
      retorne finalizar()
    }
    senao{ //CASO SEJA INSERIDO ALGO DIFERENTE DE 1 OU 2
      escreva("OPCAO INVÁLIDA, DIGITE 1- SIM OU 2- NAO: ")
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
