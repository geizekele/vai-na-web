programa {
  funcao inicio() {
    escreva("== BEM VINDO AO BANCO VAI NA WEB ==")
    menu()    
  }
  // FUNCAO COM O MENU DE OPCOES E CONDI�OES DE CHAMADA
  funcao menu(){
    inteiro opcao, continuar
    real dinheiro = 10, valor, saldo

      escreva("\n| Escolha uma das op��es abaixo: |")
      escreva("\n| 1 - DEPOSITO                   |")
      escreva("\n| 2 - SAQUE                      |")
      escreva("\n| 3 - CONSULTA                   |")
      escreva("\n| 0 - SAIR                       |")
      escreva("\n==================================")
      escreva("\nOP��O ESCOLHIDA: ")
      leia(opcao)

    escolha(opcao){
      // DEPOSITO
      caso 1:
        escreva("Informe quanto deseja depositar: R$ ")
        leia(valor)
        escreva("OPERA��O EFETUADA COM SUCESSO. Valor depositado R$ ", valor)
        //escreva("\nValor atual: R$", dinheiro + valor)
        escreva("\nDeseja continuar? 1- SIM e 2- NAO")
        escreva("\nOp��o: ")
        leia(continuar)
        // CONDICAO PARA O PRAGRAMA RETORNAR AO MENU (1) O FINALIZAR (2)       
        escolha(continuar){
          caso 1:
            retorne menu()
          pare
          caso 2:
            retorne finalizar()
          pare
        }     
      pare
      // SAQUE
      caso 2:
        escreva("Informe quanto deseja sacar: R$")
        leia(valor)
        se(dinheiro > valor){
          escreva("OPERA��O EFETUADA COM SUCESSO. Valor sacado R$", valor )
          escreva("\nValor atual: R$", dinheiro - valor)
        }senao{
          escreva("Valor INSUFICIENTE para saque! Cuidado com o cheque-especial")
        }
        escreva("\nDeseja continuar? 1- SIM e 2- NAO")
        escreva("\nOp��o: ")
        leia(continuar)
        // CONDICAO PARA O PRAGRAMA RETORNAR AO MENU (1) O FINALIZAR (2)       
        escolha(continuar){
          caso 1:
            retorne menu()
          pare
          caso 2:
            retorne finalizar()
          pare
        }     
      pare
      // CONSULTA
      caso 3:
        escreva("Valor atual: R$", dinheiro)
        escreva("\nDeseja continuar? 1- SIM e 2- NAO")
        escreva("\nOp��o: ")
        leia(continuar)
        // CONDICAO PARA O PRAGRAMA RETORNAR AO MENU (1) O FINALIZAR (2)       
        escolha(continuar){
          caso 1:
            retorne menu()
          pare
          caso 2:
            retorne finalizar()
          pare
        }     
      pare
      // SAIR DA CONTA
      caso 0:
        retorne finalizar()
      pare
    }

    se(opcao >= 0 e opcao <=3){
      menu()
    }senao{
      escreva("OP��O INV�LIDA! TENTE NOVAMENTE.")
      menu()
    }      
  }

  funcao finalizar(){
    escreva("AT� MAIS! VOLTE SEMPRE!")
  }
}
