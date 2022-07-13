package br.com.cursoja.controlecursoja.controller;

import java.io.IOException;

import br.com.cursosja.controlecursoja.model.dao.TurmaDao;
import br.com.cursosja.controlecursoja.model.entidades.Turma;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class incluirTurma
 */
public class incluirTurma extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public incluirTurma() {
        super();
        // TODO Auto-generated constructor stub
    }

/**
* @see HttpServlet#doPost(HttpServletREquest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 //TODO Auto-generated method stub
	
	String idcurso = request.getParameter("curso");
    String idProfessor = request.getParameter("professor");
    String dataInicio = request.getParameter("inicio");
    String dataTermino = request.getParameter("fim");
    
    System.out.println("idCurso => " + idcurso);
    System.out.println("idProfessor => " + idProfessor);
    System.out.println("data Inicio => " + dataInicio);
    System.out.println("data Termino => " + dataTermino);
}