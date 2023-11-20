package br.com.web.na.vai;

import java.util.Random;

public class Gerador {
	// DECLARACAO DAS VARIAVEIS
	public void gerarNumeros() {
		Random r = new Random(); //Gera os numeros aleatorios
		int numero, i;
		int[] mega = new int[7]; //Array com a quantidade de numeros que podem retornar

		// INSTANCIACAO
		for (i = 0; i < mega.length; i++) {
			numero = r.nextInt(100) + 1;
			
			// ADICIONADO AO VETOR
			mega[i] = numero;
			System.out.print(mega[i] + " ");
		}
	}
}