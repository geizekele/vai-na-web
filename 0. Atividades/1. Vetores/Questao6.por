programa {
  funcao inicio() {
    inteiro impares[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,13,15}
    inteiro contador = 0
    real medias

    para(inteiro i = 0; i <= 14; i++){
      se(impares[i] % 2 != 0){
        contador = contador+1
      }
      medias = impares[i] / contador
    }
    escreva("No vetor existem ", contador, " numeros impares \n")
  }
}


  
