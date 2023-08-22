programa {

  inteiro opcao
  real dinheiro = 10, valor
  

  funcao repetir(){
    se(opcao >= 0 e opcao <3){
      menu()
    }senao{
      escreva("OPÇÃO INVÁLIDA! TENTE NOVAMENTE.")
      menu()
    }
  }

  funcao depositoSaque(real a, real b, cadeia tipo){
    se(tipo == "DEPOSITO"){
      retorne a + b
    }se(tipo == "SAQUE"){
      retorne a - b
    }
  }

  funcao menu(){
    inteiro continuar
    real saldo

      escreva("\n| Escolha uma das opções abaixo: |")
      escreva("\n| 1 - DEPOSITO                   |")
      escreva("\n| 2 - SAQUE                      |")
      escreva("\n| 3 - CONSULTA                   |")
      escreva("\n| 0 - SAIR                       |")
      escreva("\n==================================")
      escreva("\nOPÇÃO ESCOLHIDA: ")
      leia(opcao)
      retorne conta();
  }

  funcao conta(){
    escolha (opcao){
      caso 1:
        escreva("Informe quanto deseja depositar: R$ ")
        leia(valor)
        escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "DEPOSITO"))
      pare

      caso 2:
        escreva("Informe quanto deseja sacar: R$")
        leia(valor)
        escreva("OPERAÇÃO EFETUADA COM SUCESSO! Saldo atual R$ ", depositoSaque(dinheiro, valor, "SAQUE"))
      pare
    }
  }

  funcao inicio() {
    escreva("== BEM VINDO AO BANCO VAI NA WEB ==")
    menu() 
  }
}
