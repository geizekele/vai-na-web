package br.com.web.na.vai;

import java.util.Random;

public class GeradorMegaSena {

	public static void main(String[] args) {
		//DECLARACAO DAS VARIAVEIS
		Random r = new Random();
		int numero, i, j;
		int[] mega = new int[6];
		
		//INSTANCIACAO
		for(i=0; i<mega.length; i++) {
			numero = r.nextInt(100) + 1;
			//ADICIONADO AO VETOR
			mega[i] = numero;			
			System.out.print(mega[i] + " ");
		}

	}

}
