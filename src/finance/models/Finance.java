package finance.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "Finance")
@NamedQuery(name = "Finance.findFinance", query = "from Finance")
public class Finance implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8772317240007655145L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nomeDoGasto;
	private double valorDoGasto;
	private String dataDeRegistroDoGasto;
	
	public Finance(String nomeDoGasto, double valorDoGasto, String dataDeRegistroDoGasto) {
		this.nomeDoGasto = nomeDoGasto;
		this.valorDoGasto = valorDoGasto;
		this.dataDeRegistroDoGasto = dataDeRegistroDoGasto;
	}
	
	public Finance() {
	}

	public String getNomeDoGasto() {
		return nomeDoGasto;
	}

	public void setNomeDoGasto(String nomeDoGasto) {
		this.nomeDoGasto = nomeDoGasto;
	}

	public double getValorDoGasto() {
		return valorDoGasto;
	}

	public void setValorDoGasto(double valorDoGasto) {
		this.valorDoGasto = valorDoGasto;
	}

	public String getDataDeRegistroDoGasto() {
		return dataDeRegistroDoGasto;
	}

	public void setDataDeRegistroDoGasto(String dataDeRegistroDoGasto) {
		this.dataDeRegistroDoGasto = dataDeRegistroDoGasto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
