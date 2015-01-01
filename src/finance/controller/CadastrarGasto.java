package finance.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.FNEG;

import finance.models.Finance;
import finance.persistencia.AcessaBanco;

/**
 * Servlet implementation class CadastrarGasto
 */
@WebServlet("/CadastrarGasto")
public class CadastrarGasto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AcessaBanco acessa;
	private Date date;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarGasto() {
        super();
        acessa = new AcessaBanco();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String descricao = request.getParameter("descricao");
		String valor = request.getParameter("valor");
		
		double v = Double.parseDouble(valor);
		
		if(descricao != "" && valor != ""){
			DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
			date = new Date();
			System.out.println(descricao +" "+ valor);
			System.out.println(dateFormat.format(date));
			
			acessa.save(new Finance(descricao, v, dateFormat.format(date).toString()));
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("inserirNovoGasto.jsp");
			dispatcher.forward(request, response);
		}
	}

}
