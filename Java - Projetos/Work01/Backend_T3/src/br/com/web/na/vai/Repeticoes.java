package br.com.web.na.vai;

import java.util.Scanner;

public class Repeticoes {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Digite um número: ");
		int numero = scanner.nextInt();
		
		for(int i = 0; i <= 10; i++) {
			int tabuada = i * numero;
			System.out.println(i + " x " + numero + " = " + tabuada);
		}		
        scanner.close();
	}

}
