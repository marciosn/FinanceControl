package finance.dao;

import finance.models.Finance;

public class FinanceJPADAO extends GenericJPADAO<Finance> implements FinanceDAO{
	public FinanceJPADAO() {
		this.persistentClass = Finance.class;
	}

}
