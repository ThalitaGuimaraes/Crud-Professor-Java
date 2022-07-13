package br.com.cursoja.controlecursoja.controller;

import java.io.IOException;

import br.com.cursosja.controlecursoja.model.dao.ProfessorDao;
import br.com.cursosja.controlecursoja.model.entidades.Professor;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class incluirProfessor
 */
public class incluirProfessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public incluirProfessor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nome = request.getParameter("nomeprofessor");
		String strNumero = request.getParameter("celular");
		String valorhora = request.getParameter("valorhora");
		
		double valorh = 0.0;
		
		try {
			valorh = Double.parseDouble(valorhora);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		System.out.println(strNumero);
		
		Professor p = new Professor();
		p.setNome(nome);
		p.setCelular(strNumero);
		p.setValorHora(valorh);
		
		ProfessorDao dao = new ProfessorDao();
		
		boolean retorno = dao.incluir(p);
		
		
		response.sendRedirect("lista_professor.jsp");
	}

}
	
