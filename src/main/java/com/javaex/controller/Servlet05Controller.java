package com.javaex.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaex.vo.UserVo;

@WebServlet("/05")
public class Servlet05Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//문제 5번
		System.out.println("/05");
		
		
		//"http://localhost:8080/eljstl/05?name=이효리"
		
		//세션
		UserVo userVo = new UserVo(1, "박명수", "park", "1234", "male");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("authUser", userVo); //Scope 생략 시 결과 확인용으로 일부러 request랑 별명 똑같이 뒀었음
		
		//리퀘스트의 어트리뷰트(우리가 알고있는 것)
		UserVo userVo2 = new UserVo(2, "정성찬", "jung", "0000", "male");
		request.setAttribute("userVO", userVo2);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/05.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
