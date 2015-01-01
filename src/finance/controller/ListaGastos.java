package finance.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import finance.models.Finance;
import finance.persistencia.AcessaBanco;

/**
 * Servlet implementation class ListaGastos
 */
@WebServlet("/ListaGastos")
public class ListaGastos extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AcessaBanco acessa;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListaGastos() {
        super();
        acessa = new AcessaBanco();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dados = ArrayToJSON(acessa.getFinances());
		System.out.println(dados);
		response.setContentType("application/json"); 
		response.setCharacterEncoding("utf-8"); 
		response.getWriter().write(dados);
	}

	public String ArrayToJSON(List<Finance> fin){
		String finance;
		Gson gson = new Gson();
		finance = gson.toJson(fin);
		return finance;
		
	}
}
