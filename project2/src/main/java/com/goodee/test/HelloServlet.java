package com.goodee.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */

//http://127.0.0.1:8080/test/hello.do
@WebServlet("/test/hello.do")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request - 클라이언트(브라우저)로부터 요청을 받기위한 객체
		// response - 클라이언트에게 정보를 보내기 위한 객체
		
		
		// 한글 안 깨지게
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		java.io.PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<meta charset='UTF-8'>");
		out.println("<body>");
		out.println("<h1>this is servlet</h1>");
		out.println("<h1 style='color:red'>this is test</h1>");
		out.println("<h1 style='color:green'>한글은?</h1>"); 
		out.println("</body>");
		out.println("</html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response); // post로 오는것도 get에서 다 처리하겠다.
	}

}
