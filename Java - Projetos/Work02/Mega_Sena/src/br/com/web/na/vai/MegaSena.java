package br.com.web.na.vai;

import java.util.Scanner;

/**
 * Programa Java simula o sorteio e aposta da Mega Sena.
 */

public class MegaSena {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] numerosEscolhidos = new int[7];
		
		System.out.println("--- BEM VINDO A MEGA-SENA VAI NA WEB ---");
		System.out.println("Insira 7 números para o sorteio: ");
		
		//VERIFICACAO DE ENTRADA DE DADOS (DEVE SER INTEIRO)
        for (int i = 0; i < numerosEscolhidos.length; i++) {
            System.out.print("Número " + (i + 1) + ": ");
            while (!sc.hasNextInt()) { //caso o dado inserido não seja um int
                System.out.println("INSIRA UM NUMERO INTEIRO VALIDO!");
                sc.next();
            }
            numerosEscolhidos[i] = sc.nextInt();
        }

        sc.close();
		
		Gerador gerador = new Gerador();
		int[] numerosSorteados = gerador.gerarNumeros(); //chamada do metodo que gera os numeros aleatorios
		
		Verificador verificador = new Verificador();
		int count = verificador.verificarSorteio(numerosEscolhidos, numerosSorteados);

		System.out.println("\nQUANTIDADE DE ACERTOS: " + count);
		
		Premiacao premiacao = new Premiacao();
		premiacao.verificarPremio(count);
	}

}
