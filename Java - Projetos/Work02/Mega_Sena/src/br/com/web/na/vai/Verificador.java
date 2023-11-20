package br.com.web.na.vai;
/**
 * Classe responsavel pela comparação entre os numeros sorteados
 * e os numeros escolhidos.
 */

public class Verificador {
	public int verificarSorteio(int[] numerosEscolhidos, int[] numerosSorteados) {
		
        int count = 0;
        for (int escolhido : numerosEscolhidos) { //Estrutura que percorre cada elemento do array assumindo o valor de cada posicao
            for (int sorteado : numerosSorteados) {
                if (escolhido == sorteado) {
                    count++; //Contador que adiciona +1  para cada numero sorteado que for igual ao numero escolhido
                    break;
                }
            }
        }
        return count;
    }
}
