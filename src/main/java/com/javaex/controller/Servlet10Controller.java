package com.javaex.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/10")
public class Servlet10Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//url 파라미터에 따라서 변경되는거 확인
	/*
	 localhost:8080/eljstl/10?color=1 
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("/10");
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/10.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
