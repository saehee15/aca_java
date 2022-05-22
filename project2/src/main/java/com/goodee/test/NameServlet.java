package com.goodee.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NameServlet
 */

// http://127.0.0.1:8080/project2/name.do?name=홍길동&cnt=5
@WebServlet("/name.do")
public class NameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	int i;
	
	String name = request.getParameter("name");
	int cnt = Integer.parseInt(request.getParameter("cnt"));
	
	
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	java.io.PrintWriter out = response.getWriter();
	
	
	out.println("<html>");
	out.println("<meta charset='UTF-8'>");
	out.println("<body>");
	for(i=1; i <= cnt; i++) {
		out.println("<p>"+ name +"</p>");
	}
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
