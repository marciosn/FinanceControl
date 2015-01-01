package finance.persistencia;

import java.util.ArrayList;
import java.util.List;

import finance.dao.FinanceJPADAO;
import finance.models.Finance;

public class AcessaBanco {
	private FinanceJPADAO financeDAO;
	private List<Finance> finances = new ArrayList<Finance>();
	
	public AcessaBanco() {
		financeDAO = new FinanceJPADAO();
	}
	
	public void save(Finance finance){
		try {
			financeDAO.beginTransaction();
			financeDAO.save(finance);
			financeDAO.commit();
		} catch (Exception e) {
			financeDAO.rollback();
			e.printStackTrace();
		} finally{
			financeDAO.close();
		}
	}
	
	public List<Finance> getFinances(){
		try {
			finances = financeDAO.find();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return finances;
		
	}

}
