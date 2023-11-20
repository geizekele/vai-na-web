package br.com.web.na.vai;

import java.util.Scanner;

public class Login {

	public static void main(String[] args) {
	Scanner scanner = new Scanner(System.in);
	
	String user = "userName";
	String pass = "password";
	
    System.out.print("Digite o nome de usuário: ");
    String nome = scanner.nextLine();

    System.out.print("Digite a senha: ");
    String senha = scanner.nextLine();
    
    if(user != nome) {
    	System.out.print("Nome de usuario INVALIDO!");
    }if(pass != senha){
    	System.out.print("Senha INVALIDA!");
    }else {
    	System.out.print("LOGIN BEM-SUCEDIDO!");
    }
    scanner.close();
	}
	
}
