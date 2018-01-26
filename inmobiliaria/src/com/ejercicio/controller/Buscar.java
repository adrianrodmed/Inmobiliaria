package com.ejercicio.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ejercicio.model.Inmobiliaria;

/**
 * Servlet implementation class Prueba
 */
@WebServlet("/Buscar")
public class Buscar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Buscar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int idzona = Integer.parseInt(request.getParameter("idzona"));		
		System.out.println(idzona);
//		List<Inmobiliaria> listado = new ArrayList<Inmobiliaria>();
				
		try {
			PrintWriter wr = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inmobiliaria", "root", "");

			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM viviendas WHERE idzona=" + idzona);
		
			String resultado = "";
			
			resultado+="<div class=\"container\"><table class=\"table\"> <td>ID Zona</td> <td>Dirección</td> <td>Precio</td>";
			while (rs.next()) {	
				resultado+="<tr>";
				resultado+="<td>";
				resultado+=rs.getString(2);
				resultado+="</td>";
				resultado+="<td>";
				resultado+=rs.getString(3);
				resultado+="</td>";
				resultado+="<td>";
				resultado+=rs.getString(4);
				resultado+="</td>";
				resultado+="</tr>";
				
			}
			resultado+="</table></div>";
			request.getSession().setAttribute("servletMsg", resultado);			
			response.sendRedirect("index.jsp");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
