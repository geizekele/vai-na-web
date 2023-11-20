package br.com.web.na.vai;
/**
 * Classe responsavel por verificar e apresentar o valor do prêmiuo (se houver).
 */
public class Premiacao {
	public void verificarPremio(int count) {
		if (count == 5) {
            System.out.println("PARABENS! Você acertou 5 NÚMEROS e GANHOU R$ 10.000,00!");
        } else if (count == 6) {
            System.out.println("PARABENS! Você acertou 6 NÚMEROS e GANHOU R$ 50.000,00!");
        } else if (count == 7) {
            System.out.println("PARABENS! Você acertou 7 NÚMEROS e GANHOU R$ 200.000,00!");
        } else {
            System.out.println("QUE PENA! NAO FOI DESTA VEZ!");
        }
    }
}
