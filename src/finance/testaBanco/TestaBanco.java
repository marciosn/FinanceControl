package finance.testaBanco;

import finance.models.Finance;
import finance.persistencia.AcessaBanco;

public class TestaBanco {
	
	public static void main(String[] args) {
		AcessaBanco banco = new AcessaBanco();
		
		banco.save(new Finance("teste1", 101, "12/12/12"));
		banco.save(new Finance("teste2", 102, "12/12/12"));
		banco.save(new Finance("teste3", 103, "12/12/12"));
		banco.save(new Finance("teste4", 104, "12/12/12"));
		banco.save(new Finance("teste5", 105, "12/12/12"));
		banco.save(new Finance("teste6", 106, "12/12/12"));
		banco.save(new Finance("teste7", 107, "12/12/12"));
		
		for(Finance finance : banco.getFinances()){
			System.out.println(finance.getNomeDoGasto());
		}
	}

}
