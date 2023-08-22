programa {
  inteiro opcao, continuar
  real dinheiro = 10, valor
  
  funcao finalizar(){
    escreva("ATÉ MAIS! VOLTE SEMPRE!")
  }

  funcao continuar(){
    escreva("\nDeseja continuar/tentar novamente? 1- SIM ou 2- NAO: ")
    leia(continuar)

    se(continuar == 1){
      menu()
    }se(continuar == 2){
      retorne finalizar()
    }senao{
      escreva("OPCAO INVÁLIDA, DIGITE 1- SIM ou 2- NAO: ")
      continuar()
    }
  }

  funcao repetir(){
    se(opcao >= 0 e opcao <=3){
      conta()
    }senao{
      escreva("OPÇÃO INVÁLIDA! TENTE NOVAMENTE.")
      menu()
    }
  }

  funcao depositoSaque(real a, real b, cadeia tipo){
    se(tipo == "DEPOSITO"){
      retorne a + b
    }se(tipo == "SAQUE"){
      se(dinheiro > valor){
      retorne a - b
      }senao{
        escreva("Valor INSUFICIENTE para saque!")
        continuar()
      }     
    }
  }

  funcao menu(){
    
    real saldo

      escreva("\n| Escolha uma das opções abaixo: |")
      escreva("\n| 1 - DEPOSITO                   |")
      escreva("\n| 2 - SAQUE                      |")
      escreva("\n| 3 - CONSULTA                   |")
      escreva("\n| 0 - SAIR                       |")
      escreva("\n==================================")
      escreva("\nOPÇÃO ESCOLHIDA: ")
      leia(opcao)
      repetir()
  }

  funcao conta(){
    escolha (opcao){
      caso 1:
        escreva("Informe quanto deseja depositar: R$ ")
        leia(valor)
        escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "DEPOSITO"))
        dinheiro += valor
        continuar()
      pare

      caso 2:
        escreva("Informe quanto deseja sacar: R$")
        leia(valor)

        escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "SAQUE"))
        dinheiro -= valor
        continuar()
      pare

      caso 3:
        escreva("Valor atual: R$", dinheiro)
        continuar()
      pare

      caso 0:
        retorne finalizar()
      pare
    }
  }

  funcao inicio() {
    escreva("== BEM VINDO AO BANCO VAI NA WEB ==")
    menu() 
  }
}
