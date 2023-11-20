package br.com.web.na.vai;

/**
 * Programa Java simula o sorteio e aposta da Mega Sena.
 */

public class MegaSena {

	public static void main(String[] args) {
		
		Gerador gerador = new Gerador();
		gerador.gerarNumeros(); //chamada da classe que gera os numeros aleatorios

	}

}
