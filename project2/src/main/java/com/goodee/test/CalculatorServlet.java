package com.goodee.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculatorServlet
 */
@WebServlet("/calculator")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculatorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		String operator = request.getParameter("operator");
		String oper="+";
		
		int result =0;
		if(operator.equals("1")) {
			oper ="+";
			result = x+y;
		}
		else if(operator.equals("2")) {
			oper = "-";
			result = x-y;
		}
		else if(operator.equals("3")) {
			oper = "*";
			result = x*y;
		}
		else {
			oper="/";
			result = x/y;
		}
		
		PrintWriter out = response.getWriter();
		
		// ctrl + shift + o : import 단축키
		// ctrl + shift + x : 문자를 대문자로
		// ctrl + shift + y : 문자를 소문자로
		// ctrl + f : 동일파일내서 검색
		// ctrl + h : 프로젝트 전체에서 검색(여러개의 파일에서 찾고자 할때)
		
		out.println("<html>");
		out.println(String.format("<h1>%d %s %d = %d</h1>", x, oper, y, result));
		out.println("<html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
