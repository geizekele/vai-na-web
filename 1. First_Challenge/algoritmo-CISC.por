programa {
  funcao inicio() {
    escreva("== BEM VINDO AO BANCO VAI NA WEB ==")
    menu()    
  }

  funcao menu(){
    inteiro opcao, continuar
    real dinheiro = 10, valor, saldo

    //faca{
      escreva("\n| Escolha uma das op��es abaixo: |")
      escreva("\n| 1 - DEPOSITO                   |")
      escreva("\n| 2 - SAQUE                      |")
      escreva("\n| 3 - CONSULTA                   |")
      escreva("\n| 0 - SAIR                       |")
      escreva("\n==================================")
      escreva("\nOP��O ESCOLHIDA: ")
      leia(opcao)

    escolha(opcao){
      caso 1:
        escreva("Informe quanto deseja depositar: R$")
        leia(valor)
        escreva("OPERA��O EFETUADA COM SUCESSO. Valor depositado R$", valor)
        escreva("\nValor atual: R$", dinheiro + valor)
        escreva("\nDeseja continuar? 1- SIM e 2- NAO")
        escreva("\nOp��o: ")
        leia(continuar)

        se(continuar == 1){
          inicio()
        }senao{
          escreva("At� mais. Volte sempre!")
        }
      pare

      caso 2:
        escreva("Informe quanto deseja sacar: R$")
        leia(valor)
        se(dinheiro > valor){
          escreva("OPERA��O EFETUADA COM SUCESSO. Valor sacado R$", valor )
          escreva("\nValor atual: R$", dinheiro - valor)
        }senao{
          escreva("Valor INSUFICIENTE para saque! Cuidado com o cheque-especial")
        }
      pare

      caso 3:
        escreva("Valor atual: R$", dinheiro)
      pare

      caso 0:
        escreva("At� mais. Volte sempre!")
      pare
    }

    se(opcao >= 0 e opcao <=3){
      menu()
    }senao{
      escreva("OP��O INV�LIDA! TENTE NOVAMENTE.")
      menu()
    }
      
  }
}
