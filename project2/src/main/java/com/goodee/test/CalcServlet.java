package com.goodee.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet
 */
//http://127.0.0.1:8080/project2/calc.do?x=10&y=20
@WebServlet("/calc.do")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		// 클라이언트로부터 값을 받아 오는 방법
		int x = Integer.parseInt(request.getParameter("x"));  // String으로 받아옴, 그래서 String을 int로 바꾸기 위해
		int y = Integer.parseInt(request.getParameter("y")); 
		
		out.println("<html>");
		out.println("<body>");
		
		out.println("<h1>"+String.format("%d + %d = %d", x, y, x+y)+"</h1>"); //d가 자릿수 의미
		out.println("<h1>"+String.format("%d - %d = %d", x, y, x-y)+"</h1>"); 
		out.println("<h1>"+String.format("%d * %d = %d", x, y, x*y)+"</h1>");
		out.println("<h1>"+String.format("%d / %d = %d", x, y, x/y)+"</h1>");
		
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
