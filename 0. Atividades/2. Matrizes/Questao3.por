programa {
  inclua biblioteca Util --> u

  funcao inicio() {

    cadeia vetor[] = {"Geize","Diego","Michelle","Jonata","Bianca","Lucas"}
    
    cadeia matriz[][] = {{1, 2, 3},
                         {2, 3, 4},
                         {6, 7, 4},
                         {7, 23,5},
                         {14, 87, 44},
                         {61, 78, 40}}
    
    para(inteiro l = 0; l < u.numero_elementos(vetor); l++){
      escreva("Notas ", vetor[l], " : ")
    para(inteiro j = 0; j < u.numero_colunas(matriz); j++){
        escreva("[",matriz[l][j],"]")
      }
      escreva("\n")
    }    
  }
}
